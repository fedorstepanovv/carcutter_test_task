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
    if (state.employees.isEmpty) {
      emit(state.copyWith(status: EmployeesFeedStatus.loading));
    }

    try {
      await _repository.syncEmployees();
    } catch (_) {
      // Add error state to show a full view error if no employees
      if (state.employees.isEmpty) {
        emit(state.copyWith(status: EmployeesFeedStatus.error));
      }
    }
  }

  @override
  Future<void> close() {
    _employeesSubscription?.cancel();
    return super.close();
  }
}
