// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'employee_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_EmployeeModel _$EmployeeModelFromJson(Map<String, dynamic> json) =>
    _EmployeeModel(
      id: (json['id'] as num).toInt(),
      employeeName: json['employee_name'] as String,
      employeeSalary: _toString(json['employee_salary']),
      employeeAge: _toString(json['employee_age']),
      profileImage: json['profile_image'] as String? ?? '',
    );

Map<String, dynamic> _$EmployeeModelToJson(_EmployeeModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'employee_name': instance.employeeName,
      'employee_salary': instance.employeeSalary,
      'employee_age': instance.employeeAge,
      'profile_image': instance.profileImage,
    };
