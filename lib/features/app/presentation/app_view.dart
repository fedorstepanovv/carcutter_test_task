import 'package:carcutter_test/core/theme/app_theme.dart';
import 'package:carcutter_test/features/app/presentation/cubit/app_cubit.dart';
import 'package:carcutter_test/features/app/router/router.dart';
import 'package:carcutter_test/features/employees/employee.dart';
import 'package:carcutter_test/locator.dart';
import 'package:carcutter_test/shared/extensions/app_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AppCubit(sl.get<EmployeeRepository>()),
      child: const AppView(),
    );
  }
}

class AppView extends StatelessWidget {
  const AppView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      theme: AppTheme.lightTheme,
      builder: (context, child) {
        return BlocListener<AppCubit, AppState>(
          listenWhen: (previous, current) {
            return previous.mapOrNull(syncFailure: (p) => p.timestamp) !=
                current.mapOrNull(syncFailure: (c) => c.timestamp);
          },
          listener: (context, state) {
            state.mapOrNull(
              syncFailure: (f) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(f.error.mapErrorMessage()),
                    backgroundColor: Theme.of(context).colorScheme.error,
                  ),
                );
              },
            );
          },
          child: child!,
        );
      },
    );
  }
}
