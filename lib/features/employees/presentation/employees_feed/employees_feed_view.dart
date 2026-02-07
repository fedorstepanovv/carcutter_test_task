import 'package:flutter/material.dart';

class EmployeesFeedView extends StatelessWidget {
  const EmployeesFeedView({super.key});
  static const path = '/employees';
  static const routeName = 'employees_feed';

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Employees Feed")));
  }
}
