import 'package:carcutter_test/features/employees/presentation/employee_detail/cubit/employee_detail_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';

class EmployeeForm extends StatelessWidget {
  const EmployeeForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      padding: EdgeInsets.all(16.0),
      child: Column(
        children: [
          _NameInput(),
          SizedBox(height: 16),
          _SalaryInput(),
          SizedBox(height: 16),
          _AgeInput(),
          SizedBox(height: 32),
          _SubmitButton(),
        ],
      ),
    );
  }
}

class _NameInput extends StatelessWidget {
  const _NameInput();

  @override
  Widget build(BuildContext context) {
    final isEnabled = context.select(
      (EmployeeDetailCubit c) => c.state.isEditing,
    );
    final displayError = context.select(
      (EmployeeDetailCubit c) => c.state.name.displayError,
    );

    final initialValue = context.read<EmployeeDetailCubit>().state.name.value;

    return TextFormField(
      initialValue: initialValue,
      enabled: isEnabled,
      key: const Key('employeeForm_nameInput_textField'),
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        labelText: 'Name',
        errorText: displayError != null ? 'Name is required' : null,
      ),
      onChanged: (value) =>
          context.read<EmployeeDetailCubit>().nameChanged(value),
    );
  }
}

class _SalaryInput extends StatelessWidget {
  const _SalaryInput();

  @override
  Widget build(BuildContext context) {
    final isEnabled = context.select(
      (EmployeeDetailCubit c) => c.state.isEditing,
    );
    final displayError = context.select(
      (EmployeeDetailCubit c) => c.state.salary.displayError,
    );
    final initialValue = context.read<EmployeeDetailCubit>().state.salary.value;

    return TextFormField(
      key: const Key('employeeForm_salaryInput_textField'),
      initialValue: initialValue,
      enabled: isEnabled,
      textInputAction: TextInputAction.next,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        labelText: 'Salary',
        errorText: displayError != null ? 'Salary is required' : null,
      ),
      onChanged: (value) =>
          context.read<EmployeeDetailCubit>().salaryChanged(value),
    );
  }
}

class _AgeInput extends StatelessWidget {
  const _AgeInput();

  @override
  Widget build(BuildContext context) {
    final isEnabled = context.select(
      (EmployeeDetailCubit c) => c.state.isEditing,
    );
    final displayError = context.select(
      (EmployeeDetailCubit c) => c.state.age.displayError,
    );
    final initialValue = context.read<EmployeeDetailCubit>().state.age.value;

    return TextFormField(
      initialValue: initialValue,
      enabled: isEnabled,
      textInputAction: TextInputAction.done,
      keyboardType: TextInputType.number,
      key: const Key('employeeForm_ageInput_textField'),
      decoration: InputDecoration(
        labelText: 'Age',
        errorText: displayError != null ? 'Age is required' : null,
      ),
      onChanged: (value) =>
          context.read<EmployeeDetailCubit>().ageChanged(value),
    );
  }
}

class _SubmitButton extends StatelessWidget {
  const _SubmitButton();

  @override
  Widget build(BuildContext context) {
    final isEditing = context.select(
      (EmployeeDetailCubit c) => c.state.isEditing,
    );
    final isInProgress = context.select(
      (EmployeeDetailCubit c) => c.state.status.isInProgress,
    );
    final isValid = context.select((EmployeeDetailCubit c) => c.state.isValid);
    final isNew = context.select(
      (EmployeeDetailCubit c) => c.state.isNewEmployee,
    );

    if (!isEditing) return const SizedBox.shrink();

    return ElevatedButton(
      style: ElevatedButton.styleFrom(),
      onPressed: isValid && !isInProgress
          ? () => context.read<EmployeeDetailCubit>().submit()
          : null,
      child: isInProgress
          ? const SizedBox(
              height: 20,
              width: 20,
              child: CircularProgressIndicator(strokeWidth: 2),
            )
          : Text(isNew ? 'Create Employee' : 'Update Employee'),
    );
  }
}
