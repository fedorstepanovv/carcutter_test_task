part of 'employees_feed_cubit.dart';

enum EmployeesFeedStatus { initial, loading, loaded, error }

@freezed
abstract class EmployeesFeedState with _$EmployeesFeedState {
  const factory EmployeesFeedState({
    @Default(EmployeesFeedStatus.initial) EmployeesFeedStatus status,
    @Default([]) List<EmployeeModel> employees,
    AppException? failure,
    @Default(false) bool isSyncing,
  }) = _EmployeesFeedState;
}
