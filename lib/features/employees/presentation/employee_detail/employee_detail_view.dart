import 'package:flutter/material.dart';

class EmployeeDetailView extends StatelessWidget {
  const EmployeeDetailView({super.key});
  static const path = 'details';
  static const routeName = 'employee_details';

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Employee detail")));
  }
}
