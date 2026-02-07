import 'package:freezed_annotation/freezed_annotation.dart';

part 'employee_model.freezed.dart';
part 'employee_model.g.dart';

@freezed
abstract class EmployeeModel with _$EmployeeModel {
  const factory EmployeeModel({
    required int id,
    @JsonKey(name: 'employee_name') required String employeeName,
    @JsonKey(name: 'employee_salary') required String employeeSalary,
    @JsonKey(name: 'employee_age') required String employeeAge,
    @JsonKey(name: 'profile_image') required String profileImage,
  }) = _EmployeeModel;

  factory EmployeeModel.fromJson(Map<String, dynamic> json) =>
      _$EmployeeModelFromJson(json);
}
