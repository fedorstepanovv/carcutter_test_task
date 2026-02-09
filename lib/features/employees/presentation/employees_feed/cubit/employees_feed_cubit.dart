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
    emit(state.copyWith(status: EmployeesFeedStatus.loading));
    await _employeesSubscription?.cancel();
    _employeesSubscription = _repository.getEmployees().listen(
      (employees) {
        // if cache exists
        if (employees.isNotEmpty) {
          emit(
            state.copyWith(
              employees: employees,
              status: EmployeesFeedStatus.loaded,
            ),
          );
        }
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
      if (state.employees.isEmpty) {
        emit(state.copyWith(status: EmployeesFeedStatus.loaded, employees: []));
      }
    } catch (e) {
      if (state.employees.isEmpty) {
        emit(
          state.copyWith(
            status: EmployeesFeedStatus.error,
            failure: e is AppException ? e : AppException.unknown(),
          ),
        );
      }
    }
  }

  @override
  Future<void> close() {
    _employeesSubscription?.cancel();
    return super.close();
  }
}
