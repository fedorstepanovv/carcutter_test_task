import 'dart:async';

import 'package:carcutter_test/features/employees/data/repositories/employee_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:carcutter_test/core/exceptions/exceptions.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_state.dart';
part 'app_cubit.freezed.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit(this._repository) : super(const AppState.initial()) {
    _monitorSyncErrors();
  }
  final EmployeeRepository _repository;
  StreamSubscription? _syncErrorSubscription;

  void _monitorSyncErrors() {
    _syncErrorSubscription = _repository.syncErrors.listen((error) {
      emit(
        AppState.syncFailure(
          error: error,
          timestamp: DateTime.now().millisecondsSinceEpoch,
        ),
      );
    });
  }

  @override
  Future<void> close() {
    _syncErrorSubscription?.cancel();
    return super.close();
  }
}
