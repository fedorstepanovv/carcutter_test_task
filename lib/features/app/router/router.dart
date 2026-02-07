import 'package:carcutter_test/features/employees/employee.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static final GlobalKey<NavigatorState> rootNavigatorKey =
      GlobalKey<NavigatorState>();

  static GoRouter router = GoRouter(
    navigatorKey: rootNavigatorKey,
    initialLocation: EmployeesFeedView.path,
    routes: [
      GoRoute(
        path: EmployeesFeedView.path,
        name: EmployeesFeedView.routeName,
        builder: (context, state) => const EmployeesFeedView(),
        routes: [
          GoRoute(
            path: EmployeeDetailView.path,
            name: EmployeeDetailView.routeName,
            builder: (context, state) {
              return EmployeeDetailView();
            },
          ),
        ],
      ),
    ],
    errorPageBuilder: (context, state) => const MaterialPage(
      child: Scaffold(body: Center(child: Text('Route not found!'))),
    ),
  );
}
