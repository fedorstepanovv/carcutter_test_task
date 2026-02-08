import 'dart:async';

import 'package:carcutter_test/core/exceptions/exceptions.dart';
import 'package:carcutter_test/features/employees/employee.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'employees_feed_state.dart';
part 'employees_feed_cubit.freezed.dart';

class EmployeesFeedCubit extends Cubit<EmployeesFeedState> {
  final EmployeeRepository _repository;
  StreamSubscription? _employeesSubscription;
  EmployeesFeedCubit(this._repository) : super(EmployeesFeedState());

  Future<void> loadEmployees() async {
    await _employeesSubscription?.cancel();
    _employeesSubscription = _repository.getEmployees().listen(
      (employees) {
        emit(
          state.copyWith(
            employees: employees,
            status: EmployeesFeedStatus.loaded,
          ),
        );
      },
      onError: (error) {
        // Local database error
        emit(
          state.copyWith(
            status: EmployeesFeedStatus.error,
            failure: AppException.unknown(),
          ),
        );
      },
    );
    await _refreshEmployees();
  }

  Future<void> _refreshEmployees() async {
    if (state.employees.isEmpty) {
      emit(state.copyWith(status: EmployeesFeedStatus.loading));
    } else {
      emit(state.copyWith(isSyncing: true));
    }
    try {
      await _repository.syncEmployees();
      emit(state.copyWith(isSyncing: false));
    } on AppException catch (e) {
      emit(
        state.copyWith(
          isSyncing: false,
          failure: e,
          status: state.employees.isEmpty
              ? EmployeesFeedStatus.error
              : state.status,
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          isSyncing: false,
          failure: AppException.unknown(),
          status: state.employees.isEmpty
              ? EmployeesFeedStatus.error
              : state.status,
        ),
      );
    }
  }

  @override
  Future<void> close() {
    _employeesSubscription?.cancel();
    return super.close();
  }
}
