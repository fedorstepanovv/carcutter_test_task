import 'package:carcutter_test/features/employees/data/models/employee_model.dart';
import 'package:flutter/material.dart';

class EmployeeListItem extends StatelessWidget {
  const EmployeeListItem({
    super.key,
    required this.employee,
    required this.onTap,
  });

  final EmployeeModel employee;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: employee.profileImage.isNotEmpty
            ? NetworkImage(employee.profileImage)
            : null,
        child: employee.profileImage.isEmpty
            ? Text(employee.employeeName[0])
            : null,
      ),
      title: Text(employee.employeeName),
      subtitle: Text('Age: ${employee.employeeAge}'),
      onTap: onTap,
    );
  }
}
