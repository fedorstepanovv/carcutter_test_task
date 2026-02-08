part of 'employee_detail_cubit.dart';

@freezed
abstract class EmployeeDetailState with _$EmployeeDetailState {
  const EmployeeDetailState._();
  const factory EmployeeDetailState({
    @Default(RequiredEmployeeInput.pure()) RequiredEmployeeInput name,
    @Default(RequiredEmployeeInput.pure()) RequiredEmployeeInput salary,
    @Default(RequiredEmployeeInput.pure()) RequiredEmployeeInput age,
    @Default(FormzSubmissionStatus.initial) FormzSubmissionStatus status,
    @Default(false) bool isValid,
    AppException? failure,
    int? employeeId,
    @Default(true) bool isEditing,
  }) = _EmployeeDetailState;

  bool get isNewEmployee => employeeId == null;
}
