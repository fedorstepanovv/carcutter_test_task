import 'package:carcutter_test/features/employees/employee.dart';
import 'package:carcutter_test/features/employees/presentation/widgets/employee_list_item.dart';
import 'package:carcutter_test/shared/extensions/app_extensions.dart';
import 'package:carcutter_test/shared/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import 'cubit/employees_feed_cubit.dart';

class EmployeesFeedView extends StatelessWidget {
  const EmployeesFeedView({super.key});
  static const path = '/employees';
  static const routeName = 'employees_feed';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Employees Feed"),
        actions: [_SyncIndicator()],
      ),
      body: BlocBuilder<EmployeesFeedCubit, EmployeesFeedState>(
        builder: (context, state) {
          return switch (state.status) {
            EmployeesFeedStatus.loading => const Center(
              child: CircularProgressIndicator(),
            ),
            EmployeesFeedStatus.error when state.employees.isEmpty =>
              AppErrorView(
                message:
                    state.failure?.mapErrorMessage() ?? 'Something went wrong',
                onRetry: () =>
                    context.read<EmployeesFeedCubit>().loadEmployees(),
              ),
            _ when state.employees.isEmpty => const AppEmptyView(
              message: 'We havent found any employees yet',
            ),
            _ => ListView.builder(
              itemBuilder: (context, index) {
                final employee = state.employees[index];
                return EmployeeListItem(
                  employee: employee,
                  onTap: () => context.pushNamed(
                    EmployeeDetailView.routeName,
                    extra: employee,
                  ),
                );
              },
              itemCount: state.employees.length,
            ),
          };
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () =>
            context.pushNamed(EmployeeDetailView.routeName, extra: null),
        child: const Icon(Icons.add),
      ),
    );
  }
}

class _SyncIndicator extends StatelessWidget {
  const _SyncIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EmployeesFeedCubit, EmployeesFeedState>(
      buildWhen: (p, c) => p.isSyncing != c.isSyncing,
      builder: (context, state) {
        if (state.isSyncing) {
          return const Padding(
            padding: EdgeInsets.all(16.0),
            child: CircularProgressIndicator(strokeWidth: 2),
          );
        }
        return const SizedBox.shrink();
      },
    );
  }
}
