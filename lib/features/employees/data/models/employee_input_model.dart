import 'package:formz/formz.dart';

enum RequiredValidationError { empty }

class RequiredEmployeeInput
    extends FormzInput<String, RequiredValidationError> {
  const RequiredEmployeeInput.pure([super.value = '']) : super.pure();
  const RequiredEmployeeInput.dirty([super.value = '']) : super.dirty();

  @override
  RequiredValidationError? validator(String value) {
    return value.isNotEmpty ? null : RequiredValidationError.empty;
  }
}
