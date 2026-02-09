import 'package:carcutter_test/features/employees/employee.dart';

EmployeeModel createTestEmployee({
  int? id,
  String? name,
  String? salary,
  String? age,
}) {
  return EmployeeModel(
    id: id ?? 1,
    employeeName: name ?? 'Test User',
    employeeSalary: salary ?? '5000',
    employeeAge: age ?? '30',
    profileImage: '',
  );
}
