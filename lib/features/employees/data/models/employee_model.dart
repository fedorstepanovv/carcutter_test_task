import 'package:freezed_annotation/freezed_annotation.dart';

part 'employee_model.freezed.dart';
part 'employee_model.g.dart';

@freezed
abstract class EmployeeModel with _$EmployeeModel {
  const factory EmployeeModel({
    required int id,
    @JsonKey(name: 'employee_name') required String employeeName,
    @JsonKey(name: 'employee_salary', fromJson: _toString)
    required String employeeSalary,
    @JsonKey(name: 'employee_age', fromJson: _toString)
    required String employeeAge,
    @JsonKey(name: 'profile_image', defaultValue: '')
    required String profileImage,
  }) = _EmployeeModel;

  factory EmployeeModel.fromJson(Map<String, dynamic> json) =>
      _$EmployeeModelFromJson(json);
}

// Since api doesn't return same types for all fields, just fallback to string by default
String _toString(dynamic value) {
  return value?.toString() ?? '';
}
