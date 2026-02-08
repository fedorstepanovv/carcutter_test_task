import 'package:carcutter_test/features/employees/presentation/employee_detail/cubit/employee_detail_cubit.dart';
import 'package:carcutter_test/features/employees/presentation/widgets/employee_form.dart';
import 'package:carcutter_test/shared/extensions/app_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';

class EmployeeDetailView extends StatelessWidget {
  const EmployeeDetailView({super.key});
  static const path = 'details';
  static const routeName = 'employee_details';

  @override
  Widget build(BuildContext context) {
    return BlocListener<EmployeeDetailCubit, EmployeeDetailState>(
      listenWhen: (previous, current) => previous.status != current.status,
      listener: (context, state) {
        if (state.status.isSuccess) {
          Navigator.pop(context);
        }
        if (state.status.isFailure) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              backgroundColor: Theme.of(context).colorScheme.error,
              content: Text(
                state.failure?.mapErrorMessage() ?? 'Something went wrong',
                style: TextStyle(color: Theme.of(context).colorScheme.onError),
              ),
            ),
          );
        }
      },
      child: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Scaffold(appBar: _FormAppBar(), body: EmployeeForm()),
      ),
    );
  }
}

class _FormAppBar extends StatelessWidget implements PreferredSizeWidget {
  const _FormAppBar();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    final (isNew, isEditing, isSubmitting, isSyncing) = context.select(
      (EmployeeDetailCubit c) => (
        c.state.isNewEmployee,
        c.state.isEditing,
        c.state.status.isInProgress,
        c.state.isSyncing,
      ),
    );
    final canEdit = !isNew && !isSyncing && !isSubmitting;

    return AppBar(
      title: Text(isNew ? 'New Employee' : 'Details'),
      actions: !canEdit
          ? []
          : [
              IconButton(
                icon: Icon(isEditing ? Icons.close : Icons.edit),
                onPressed: () =>
                    context.read<EmployeeDetailCubit>().toggleEditMode(),
              ),

              IconButton(
                icon: Icon(
                  Icons.delete_outline,
                  color: Theme.of(context).colorScheme.error,
                ),
                onPressed: () =>
                    context.read<EmployeeDetailCubit>().deleteEmployee(),
              ),
            ],
    );
  }
}
