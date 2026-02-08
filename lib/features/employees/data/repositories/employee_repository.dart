import 'dart:async';

import 'package:carcutter_test/core/exceptions/exceptions.dart';
import 'package:carcutter_test/features/employees/data/datasources/local_employee_data_source.dart';
import 'package:carcutter_test/features/employees/data/datasources/remote_employee_data_source.dart';
import 'package:carcutter_test/features/employees/data/models/employee_model.dart';
import 'package:flutter/material.dart';
import 'package:queue/queue.dart';

abstract class EmployeeRepository {
  Stream<List<EmployeeModel>> getEmployees();
  Future<void> syncEmployees();
  Future<void> createEmployee(EmployeeModel employee);
  Future<void> deleteEmployee(int id);
  Future<void> updateEmployee(EmployeeModel employee);
  Stream<AppException> get syncErrors;
  void dispose();
}

///
/// Coordinates data collection from remote and local sources
///
class EmployeeRepositoryImpl implements EmployeeRepository {
  final LocalEmployeeDataSource _localDataSource;
  final RemoteEmployeeDataSource _remoteDataSource;

  EmployeeRepositoryImpl(this._localDataSource, this._remoteDataSource);

  final _syncErrorController = StreamController<AppException>.broadcast();

  @override
  Stream<AppException> get syncErrors => _syncErrorController.stream;

  // add queue for ordered execution of reqs we need to support the optimistic ux
  final _syncQueue = Queue(parallel: 1);

  @visibleForTesting
  Queue get syncQueue => _syncQueue;

  @override
  Stream<List<EmployeeModel>> getEmployees() {
    return _localDataSource.getEmployeesStream();
  }

  @override
  Future<void> syncEmployees() async {
    final remoteEmployees = await _remoteDataSource.getEmployees();
    await _localDataSource.cacheEmployees(remoteEmployees);
  }

  @override
  Future<void> createEmployee(EmployeeModel employee) async {
    final tempId = -DateTime.now().millisecondsSinceEpoch;
    final tempEmployee = employee.copyWith(id: tempId);

    // Save locally first to update ui via stream
    await _localDataSource.addEmployee(tempEmployee);
    _syncQueue.add(() => _createRemote(employee, tempId));
  }

  Future<void> _createRemote(EmployeeModel employee, int tempId) async {
    try {
      final payload = employee.toJson()..remove('id');
      final serverEmployee = await _remoteDataSource.createEmployee(payload);

      // Update the selected employee with the correct id from the server
      await _localDataSource.replaceEmployee(tempId, serverEmployee);
    } catch (e) {
      // Rollback local employee
      await _localDataSource.deleteEmployee(tempId);
      _emitError(e);
    }
  }

  @override
  Future<void> updateEmployee(EmployeeModel employee) async {
    final oldEmployee = await _localDataSource.getEmployee(employee.id);
    await _localDataSource.updateEmployee(employee);
    if (oldEmployee != null) {
      _syncQueue.add(() => _updateRemote(employee, oldEmployee));
    }
  }

  Future<void> _updateRemote(
    EmployeeModel newEmployee,
    EmployeeModel oldEmployee,
  ) async {
    try {
      final payload = newEmployee.toJson()..remove('id');
      final serverEmployee = await _remoteDataSource.updateEmployee(
        newEmployee.id,
        payload,
      );
      await _localDataSource.updateEmployee(serverEmployee);
    } catch (e) {
      await _localDataSource.updateEmployee(oldEmployee);
      _emitError(e);
    }
  }

  @override
  Future<void> deleteEmployee(int id) async {
    final backupEmployee = await _localDataSource.getEmployee(id);
    if (backupEmployee == null) {
      return;
    }
    await _localDataSource.deleteEmployee(id);
    _syncQueue.add(() => _deleteRemote(id, backupEmployee));
  }

  Future<void> _deleteRemote(int id, EmployeeModel backupEmployee) async {
    try {
      await _remoteDataSource.deleteEmployee(id);
    } catch (e) {
      await _localDataSource.addEmployee(backupEmployee);
      _emitError(e);
    }
  }

  void _emitError(Object e) {
    if (_syncErrorController.isClosed) return;

    _syncErrorController.add(
      e is AppException ? e : AppException.unknown(error: e),
    );
  }

  @override
  void dispose() {
    _syncQueue.cancel();
    _syncErrorController.close();
  }
}
