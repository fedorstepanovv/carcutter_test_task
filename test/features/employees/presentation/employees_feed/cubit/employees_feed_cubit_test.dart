import 'package:bloc_test/bloc_test.dart';
import 'package:carcutter_test/core/exceptions/app_exception/app_exception.dart';
import 'package:carcutter_test/features/employees/presentation/employees_feed/cubit/employees_feed_cubit.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../../employees_fixtures.dart';
import '../../../employees_mocks.dart';

void main() {
  late MockEmployeeRepository mockRepo;
  final tEmployee = createTestEmployee();

  final tList = [tEmployee];
  final tException = AppException.unknown();
  setUp(() {
    mockRepo = MockEmployeeRepository();
  });

  group('EmployeesFeedCubit', () {
    blocTest<EmployeesFeedCubit, EmployeesFeedState>(
      'emits [loading, loaded] when local data exists and remote sync succeeds',
      build: () => EmployeesFeedCubit(mockRepo),
      setUp: () {
        when(
          () => mockRepo.getEmployees(),
        ).thenAnswer((_) => Stream.value(tList));
        when(() => mockRepo.syncEmployees()).thenAnswer((_) async {});
      },
      act: (cubit) => cubit.loadEmployees(),
      expect: () => [
        isA<EmployeesFeedState>().having(
          (s) => s.status,
          'status',
          EmployeesFeedStatus.loading,
        ),
        isA<EmployeesFeedState>()
            .having((s) => s.status, 'status', EmployeesFeedStatus.loaded)
            .having((s) => s.employees, 'employees', tList),
      ],
    );

    blocTest<EmployeesFeedCubit, EmployeesFeedState>(
      'emits [loading, loaded] and ignores error when local data exists but sync fails',
      build: () => EmployeesFeedCubit(mockRepo),
      setUp: () {
        when(
          () => mockRepo.getEmployees(),
        ).thenAnswer((_) => Stream.value(tList));

        when(
          () => mockRepo.syncEmployees(),
        ).thenAnswer((_) async => throw tException);
      },
      act: (cubit) => cubit.loadEmployees(),
      expect: () => [
        isA<EmployeesFeedState>().having(
          (s) => s.status,
          'status',
          EmployeesFeedStatus.loading,
        ),
        isA<EmployeesFeedState>()
            .having((s) => s.status, 'status', EmployeesFeedStatus.loaded)
            .having((s) => s.employees, 'employees', tList),
      ],
    );

    blocTest<EmployeesFeedCubit, EmployeesFeedState>(
      'emits [loading, error] when local data is empty and remote sync fails',
      build: () => EmployeesFeedCubit(mockRepo),
      setUp: () {
        when(() => mockRepo.getEmployees()).thenAnswer((_) => Stream.value([]));

        when(
          () => mockRepo.syncEmployees(),
        ).thenAnswer((_) async => throw tException);
      },
      act: (cubit) => cubit.loadEmployees(),
      expect: () => [
        isA<EmployeesFeedState>().having(
          (s) => s.status,
          'status',
          EmployeesFeedStatus.loading,
        ),

        // failed with app exception
        isA<EmployeesFeedState>()
            .having((s) => s.status, 'status', EmployeesFeedStatus.error)
            .having((s) => s.failure, 'failure', isA<AppException>()),
      ],
    );
  });
  blocTest<EmployeesFeedCubit, EmployeesFeedState>(
    'emits [loading, loaded(empty)] when server returns empty data',
    build: () => EmployeesFeedCubit(mockRepo),
    setUp: () {
      when(() => mockRepo.getEmployees()).thenAnswer((_) => Stream.value([]));
      when(() => mockRepo.syncEmployees()).thenAnswer((_) async {});
    },
    act: (cubit) => cubit.loadEmployees(),
    expect: () => [
      isA<EmployeesFeedState>().having(
        (s) => s.status,
        'status',
        EmployeesFeedStatus.loading,
      ),

      isA<EmployeesFeedState>()
          .having((s) => s.status, 'status', EmployeesFeedStatus.loaded)
          .having((s) => s.employees, 'employees', isEmpty),
    ],
  );
}
