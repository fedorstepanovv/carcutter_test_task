import 'package:carcutter_test/features/employees/employee.dart';
import 'package:carcutter_test/features/employees/presentation/employee_detail/cubit/employee_detail_cubit.dart';
import 'package:carcutter_test/features/employees/presentation/employees_feed/cubit/employees_feed_cubit.dart';
import 'package:carcutter_test/locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
        builder: (context, state) => BlocProvider(
          create: (context) =>
              EmployeesFeedCubit(sl.get<EmployeeRepository>())..loadEmployees(),
          child: const EmployeesFeedView(),
        ),
        routes: [
          GoRoute(
            path: EmployeeDetailView.path,
            name: EmployeeDetailView.routeName,
            builder: (context, state) {
              return BlocProvider<EmployeeDetailCubit>(
                child: EmployeeDetailView(),
                create: (context) =>
                    EmployeeDetailCubit(sl.get<EmployeeRepository>())
                      ..initialize(state.extra as EmployeeModel?),
              );
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
