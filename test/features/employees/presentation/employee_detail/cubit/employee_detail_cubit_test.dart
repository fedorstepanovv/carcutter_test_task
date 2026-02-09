import 'package:bloc_test/bloc_test.dart';
import 'package:carcutter_test/core/exceptions/exceptions.dart';
import 'package:carcutter_test/features/employees/presentation/employee_detail/cubit/employee_detail_cubit.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:formz/formz.dart';
import 'package:mocktail/mocktail.dart';

import '../../../employees_fixtures.dart';
import '../../../employees_mocks.dart';

void main() {
  late MockEmployeeRepository mockRepo;

  final tEmployee = createTestEmployee(id: 100, name: "Jff");

  final tOptimisticEmployee = tEmployee.copyWith(id: -555);

  setUp(() {
    mockRepo = MockEmployeeRepository();
    registerFallbackValue(tEmployee);
  });

  group('EmployeeDetailCubit', () {
    group('initialize', () {
      blocTest<EmployeeDetailCubit, EmployeeDetailState>(
        'should setup creation mode when initialized with null',
        build: () => EmployeeDetailCubit(mockRepo),
        act: (cubit) => cubit.initialize(null),
        expect: () => [
          isA<EmployeeDetailState>()
              .having((s) => s.isEditing, 'isEditing', true)
              .having((s) => s.isValid, 'isValid', false)
              .having((s) => s.employeeId, 'employeeId', null),
        ],
      );

      blocTest<EmployeeDetailCubit, EmployeeDetailState>(
        'should set up view mode when initialized with employee',
        build: () => EmployeeDetailCubit(mockRepo),
        act: (cubit) => cubit.initialize(tEmployee),
        expect: () => [
          isA<EmployeeDetailState>()
              .having((s) => s.isEditing, 'isEditing', false)
              .having((s) => s.name.value, 'name', tEmployee.employeeName)
              .having((s) => s.isValid, 'isValid', true)
              .having((s) => s.isSyncing, 'isSyncing', false),
        ],
      );

      blocTest<EmployeeDetailCubit, EmployeeDetailState>(
        'should mark isSyncing = TRUE when employee ID is negative (temporary id)',
        build: () => EmployeeDetailCubit(mockRepo),
        act: (cubit) => cubit.initialize(tOptimisticEmployee),
        expect: () => [
          isA<EmployeeDetailState>().having(
            (s) => s.isSyncing,
            'isSyncing',
            true,
          ),
        ],
      );
    });

    group('form validation', () {
      blocTest<EmployeeDetailCubit, EmployeeDetailState>(
        'Form should be valid after updating all fields and validatating',
        build: () => EmployeeDetailCubit(mockRepo),
        act: (cubit) {
          cubit.initialize(null);
          cubit.nameChanged(tEmployee.employeeName);
          cubit.salaryChanged(tEmployee.employeeSalary);
          cubit.ageChanged(tEmployee.employeeAge);
        },
        skip: 1, // skip initialization
        expect: () => [
          // name
          isA<EmployeeDetailState>()
              .having((s) => s.name.value, 'name', tEmployee.employeeName)
              .having((s) => s.isValid, 'isValid', false),

          // salary
          isA<EmployeeDetailState>()
              .having((s) => s.salary.value, 'salary', tEmployee.employeeSalary)
              .having((s) => s.isValid, 'isValid', false),

          // age
          isA<EmployeeDetailState>()
              .having((s) => s.age.value, 'age', tEmployee.employeeAge)
              .having((s) => s.isValid, 'isValid', true),
        ],
      );
    });

    group('submit', () {
      blocTest<EmployeeDetailCubit, EmployeeDetailState>(
        'should call createEmployee when isNewEmployee = true',
        build: () => EmployeeDetailCubit(mockRepo),
        setUp: () {
          when(() => mockRepo.createEmployee(any())).thenAnswer((_) async {});
        },
        act: (cubit) {
          cubit.initialize(null);
          cubit.nameChanged('New ssslsls');
          cubit.salaryChanged('120');
          cubit.ageChanged('5');
          cubit.submit();
        },
        skip: 4, // init + 3 typing events
        expect: () => [
          isA<EmployeeDetailState>().having(
            (s) => s.status,
            'status',
            FormzSubmissionStatus.inProgress,
          ),
          isA<EmployeeDetailState>().having(
            (s) => s.status,
            'status',
            FormzSubmissionStatus.success,
          ),
        ],
        verify: (_) {
          verify(() => mockRepo.createEmployee(any())).called(1);
          verifyNever(() => mockRepo.updateEmployee(any()));
        },
      );

      blocTest<EmployeeDetailCubit, EmployeeDetailState>(
        'should call updateEmployee when isNewEmployee = false',
        build: () => EmployeeDetailCubit(mockRepo),
        setUp: () {
          when(() => mockRepo.updateEmployee(any())).thenAnswer((_) async {});
        },
        act: (cubit) {
          cubit.initialize(tEmployee);
          cubit.nameChanged('John Updated');
          cubit.submit();
        },
        skip: 2, // skip init + one field change
        expect: () => [
          isA<EmployeeDetailState>().having(
            (s) => s.status,
            'status',
            FormzSubmissionStatus.inProgress,
          ),
          isA<EmployeeDetailState>().having(
            (s) => s.status,
            'status',
            FormzSubmissionStatus.success,
          ),
        ],
        verify: (_) {
          verify(() => mockRepo.updateEmployee(any())).called(1);
          verifyNever(() => mockRepo.createEmployee(any()));
        },
      );

      blocTest<EmployeeDetailCubit, EmployeeDetailState>(
        'emits [failure] when repository throws exception',
        build: () => EmployeeDetailCubit(mockRepo),
        setUp: () {
          when(
            () => mockRepo.createEmployee(any()),
          ).thenThrow(AppException.unknown());
        },
        act: (cubit) {
          cubit.initialize(null);
          cubit.nameChanged('S');
          cubit.salaryChanged('1');
          cubit.ageChanged('1');
          cubit.submit();
        },
        skip: 4, // skip initialize + 3 fields updates
        expect: () => [
          isA<EmployeeDetailState>().having(
            (s) => s.status,
            'status',
            FormzSubmissionStatus.inProgress,
          ),
          isA<EmployeeDetailState>()
              .having((s) => s.status, 'status', FormzSubmissionStatus.failure)
              .having((s) => s.failure, 'failure', isA<AppException>()),
        ],
      );
    });

    group('deleteEmployee', () {
      blocTest<EmployeeDetailCubit, EmployeeDetailState>(
        'should call deleteEmployee and emit [success]',
        build: () => EmployeeDetailCubit(mockRepo),
        setUp: () {
          when(() => mockRepo.deleteEmployee(any())).thenAnswer((_) async {});
        },
        act: (cubit) {
          cubit.initialize(tEmployee);
          cubit.deleteEmployee();
        },
        skip: 1,
        expect: () => [
          isA<EmployeeDetailState>().having(
            (s) => s.status,
            'status',
            FormzSubmissionStatus.inProgress,
          ),
          isA<EmployeeDetailState>().having(
            (s) => s.status,
            'status',
            FormzSubmissionStatus.success,
          ),
        ],
        verify: (_) {
          verify(() => mockRepo.deleteEmployee(tEmployee.id)).called(1);
        },
      );
    });
  });
}
