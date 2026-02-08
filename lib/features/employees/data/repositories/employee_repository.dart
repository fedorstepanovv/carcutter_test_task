import 'package:carcutter_test/features/employees/data/datasources/local_employee_data_source.dart';
import 'package:carcutter_test/features/employees/data/datasources/remote_employee_data_source.dart';
import 'package:carcutter_test/features/employees/data/models/employee_model.dart';

abstract class EmployeeRepository {
  Stream<List<EmployeeModel>> getEmployees();
  Future<void> syncEmployees();
  Future<void> createEmployee(EmployeeModel employee);
  Future<void> deleteEmployee(int id);
  Future<void> updateEmployee(EmployeeModel employee);
}

///
/// Coordinates data collection from remote and local sources
///
class EmployeeRepositoryImpl implements EmployeeRepository {
  final LocalEmployeeDataSource _localDataSource;
  final RemoteEmployeeDataSource _remoteDataSource;

  EmployeeRepositoryImpl(this._localDataSource, this._remoteDataSource);

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
    try {
      final payload = employee.toJson()..remove('id');
      final serverEmployee = await _remoteDataSource.createEmployee(payload);

      // Update the selected employee with the correct id from the server
      await _localDataSource.replaceEmployee(tempId, serverEmployee);
    } catch (e) {
      // Rollback local employee
      await _localDataSource.deleteEmployee(tempId);
      rethrow;
    }
  }

  @override
  Future<void> updateEmployee(EmployeeModel employee) async {
    final oldEmployee = await _localDataSource.getEmployee(employee.id);
    await _localDataSource.updateEmployee(employee);
    try {
      final payload = employee.toJson()..remove('id');
      final serverEmployee = await _remoteDataSource.updateEmployee(
        employee.id,
        payload,
      );
      await _localDataSource.updateEmployee(serverEmployee);
    } catch (e) {
      if (oldEmployee != null) {
        await _localDataSource.updateEmployee(oldEmployee);
      }
      rethrow;
    }
  }

  @override
  Future<void> deleteEmployee(int id) async {
    final backupEmployee = await _localDataSource.getEmployee(id);
    if (backupEmployee == null) {
      return;
    }
    await _localDataSource.deleteEmployee(id);

    try {
      await _remoteDataSource.deleteEmployee(id);
    } catch (e) {
      await _localDataSource.addEmployee(backupEmployee);
      rethrow;
    }
  }
}
