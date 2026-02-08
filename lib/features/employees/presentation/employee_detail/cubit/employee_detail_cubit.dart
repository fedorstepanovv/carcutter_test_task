import 'package:carcutter_test/core/exceptions/exceptions.dart';
import 'package:carcutter_test/features/employees/data/models/employee_input_model.dart';
import 'package:carcutter_test/features/employees/employee.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'employee_detail_state.dart';
part 'employee_detail_cubit.freezed.dart';

class EmployeeDetailCubit extends Cubit<EmployeeDetailState> {
  final EmployeeRepository _repository;

  EmployeeDetailCubit(this._repository) : super(const EmployeeDetailState());

  void initialize(EmployeeModel? employee) {
    if (employee != null) {
      // Prefill data for existing employee
      final name = RequiredEmployeeInput.pure(employee.employeeName);
      final salary = RequiredEmployeeInput.pure(employee.employeeSalary);
      final age = RequiredEmployeeInput.pure(employee.employeeAge);

      emit(
        state.copyWith(
          employeeId: employee.id,
          name: name,
          salary: salary,
          age: age,
          isEditing: false,
          isValid: Formz.validate([name, salary, age]),
        ),
      );
    } else {
      // Creation mode
      emit(state.copyWith(isEditing: true, isValid: false));
    }
  }

  void toggleEditMode() {
    emit(state.copyWith(isEditing: !state.isEditing));
  }

  void nameChanged(String value) {
    final name = RequiredEmployeeInput.dirty(value);
    emit(
      state.copyWith(
        name: name,
        isValid: Formz.validate([name, state.salary, state.age]),
      ),
    );
  }

  void salaryChanged(String value) {
    final salary = RequiredEmployeeInput.dirty(value);
    emit(
      state.copyWith(
        salary: salary,
        isValid: Formz.validate([state.name, salary, state.age]),
      ),
    );
  }

  void ageChanged(String value) {
    final age = RequiredEmployeeInput.dirty(value);
    emit(
      state.copyWith(
        age: age,
        isValid: Formz.validate([state.name, state.salary, age]),
      ),
    );
  }

  Future<void> submit() async {
    if (!state.isValid) return;

    emit(state.copyWith(status: FormzSubmissionStatus.inProgress));

    try {
      final employee = EmployeeModel(
        id: state.employeeId ?? 0, // repo handles id manipulations
        employeeName: state.name.value,
        employeeSalary: state.salary.value,
        employeeAge: state.age.value,
        profileImage: '',
      );

      if (state.isNewEmployee) {
        await _repository.createEmployee(employee);
      } else {
        await _repository.updateEmployee(employee);
      }

      emit(state.copyWith(status: FormzSubmissionStatus.success));
    } on AppException catch (e) {
      emit(state.copyWith(status: FormzSubmissionStatus.failure, failure: e));
    } catch (_) {
      emit(
        state.copyWith(
          status: FormzSubmissionStatus.failure,
          failure: const AppException.unknown(),
        ),
      );
    }
  }

  Future<void> deleteEmployee() async {
    if (state.isNewEmployee || state.employeeId == null) return;
    emit(state.copyWith(status: FormzSubmissionStatus.inProgress));
    try {
      await _repository.deleteEmployee(state.employeeId!);
      emit(state.copyWith(status: FormzSubmissionStatus.success));
    } on AppException catch (e) {
      emit(state.copyWith(status: FormzSubmissionStatus.failure, failure: e));
    } catch (_) {
      emit(
        state.copyWith(
          status: FormzSubmissionStatus.failure,
          failure: const AppException.unknown(),
        ),
      );
    }
  }
}
