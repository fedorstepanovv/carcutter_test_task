import 'package:carcutter_test/features/employees/employee.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:carcutter_test/core/exceptions/exceptions.dart';

import '../../employees_fixtures.dart';

class MockLocalDataSource extends Mock implements LocalEmployeeDataSource {}

class MockRemoteDataSource extends Mock implements RemoteEmployeeDataSource {}

void main() {
  late EmployeeRepositoryImpl repository;
  late MockLocalDataSource mockLocal;
  late MockRemoteDataSource mockRemote;

  final tNewEmployee = createTestEmployee(id: -2);

  final tServerEmployee = tNewEmployee.copyWith(id: 100);

  setUp(() {
    mockLocal = MockLocalDataSource();
    mockRemote = MockRemoteDataSource();
    repository = EmployeeRepositoryImpl(mockLocal, mockRemote);

    // for captureAny
    registerFallbackValue(tNewEmployee);
  });

  tearDown(() {
    repository.dispose();
  });

  group('createEmployee', () {
    test(
      'Success: Should create optimistic local item, sync with remote, and replace temp id with server id.',
      () async {
        when(() => mockLocal.addEmployee(any())).thenAnswer((_) async {});
        when(
          () => mockLocal.replaceEmployee(any(), any()),
        ).thenAnswer((_) async {});
        // remote call succeeds
        when(
          () => mockRemote.createEmployee(any()),
        ).thenAnswer((_) async => tServerEmployee);

        await repository.createEmployee(tNewEmployee);

        await repository.syncQueue.onComplete;

        final captured = verify(
          () => mockLocal.addEmployee(captureAny()),
        ).captured;
        final localEmp = captured.first as EmployeeModel;

        expect(
          localEmp.id,
          isNegative,
          reason: "Optimistic ID should be negative",
        );

        verify(() => mockRemote.createEmployee(any())).called(1);

        verify(
          () => mockLocal.replaceEmployee(localEmp.id, tServerEmployee),
        ).called(1);
      },
    );
    test(
      'Failure: Should delete optimistic local item and emit error when remote fails.',
      () async {
        when(() => mockLocal.addEmployee(any())).thenAnswer((_) async {});
        when(() => mockLocal.deleteEmployee(any())).thenAnswer((_) async {});
        final tException = AppException.networkError();
        when(() => mockRemote.createEmployee(any())).thenThrow(tException);

        // Listen to stream before triggering action to capture an error
        final errorFuture = expectLater(
          repository.syncErrors,
          emits(isA<AppException>()),
        );

        await repository.createEmployee(tNewEmployee);

        await repository.syncQueue.onComplete;

        // check if stream emits an error
        await errorFuture;

        // capture the temporary id
        final captured = verify(
          () => mockLocal.addEmployee(captureAny()),
        ).captured;
        final tempId = (captured.first as EmployeeModel).id;

        verify(() => mockLocal.deleteEmployee(tempId)).called(1);
      },
    );
  });

  group('deleteEmployee', () {
    test(
      'Failure: Should restore deleted item and emit error when remote fails.',
      () async {
        final tExistingEmployee = tServerEmployee;

        when(
          () => mockLocal.getEmployee(tExistingEmployee.id),
        ).thenAnswer((_) async => tExistingEmployee);

        when(() => mockLocal.deleteEmployee(any())).thenAnswer((_) async {});

        // Fail remote deletion
        when(
          () => mockRemote.deleteEmployee(any()),
        ).thenThrow(AppException.networkError());

        // restore back
        when(() => mockLocal.addEmployee(any())).thenAnswer((_) async {});

        final errorFuture = expectLater(
          repository.syncErrors,
          emits(isA<AppException>()),
        );

        await repository.deleteEmployee(tExistingEmployee.id);
        await repository.syncQueue.onComplete;

        await errorFuture;

        verify(() => mockRemote.deleteEmployee(tExistingEmployee.id)).called(1);

        verify(() => mockLocal.addEmployee(tExistingEmployee)).called(1);
      },
    );
  });

  group('updateEmployee', () {
    test(
      'Failure: Should revert to previous local state and emit error when remote fails.',
      () async {
        final tOldData = tServerEmployee.copyWith(employeeName: 'Old Name');
        final tNewData = tServerEmployee.copyWith(employeeName: 'New Name');

        // setup the backup employee
        when(
          () => mockLocal.getEmployee(tNewData.id),
        ).thenAnswer((_) async => tOldData);

        when(() => mockLocal.updateEmployee(tNewData)).thenAnswer((_) async {});

        when(
          () => mockRemote.updateEmployee(any(), any()),
        ).thenThrow(const AppException.networkError());

        // rollback
        when(() => mockLocal.updateEmployee(tOldData)).thenAnswer((_) async {});

        final errorFuture = expectLater(
          repository.syncErrors,
          emits(isA<AppException>()),
        );

        await repository.updateEmployee(tNewData);

        await repository.syncQueue.onComplete;

        await errorFuture;

        final captured = verify(
          () => mockLocal.updateEmployee(captureAny()),
        ).captured;

        // expect 2 updateEmployee calls
        expect(captured.length, 2);

        // updated employee
        expect(
          (captured[0] as EmployeeModel).employeeName,
          tNewData.employeeName,
        );

        // old employee
        expect(
          (captured[1] as EmployeeModel).employeeName,
          tOldData.employeeName,
        );
      },
    );
  });

  group('syncing in queue', () {
    test('Check if Create finishes before Update starts', () async {
      bool isCreateFinished = false;

      // Slow creation
      when(() => mockRemote.createEmployee(any())).thenAnswer((_) async {
        await Future.delayed(const Duration(milliseconds: 50));
        isCreateFinished = true;
        return tServerEmployee;
      });

      when(() => mockRemote.updateEmployee(any(), any())).thenAnswer((_) async {
        if (!isCreateFinished) {
          throw Exception("Race detected: update executed before Create");
        }
        return tServerEmployee;
      });

      when(() => mockLocal.addEmployee(any())).thenAnswer((_) async {});
      when(
        () => mockLocal.replaceEmployee(any(), any()),
      ).thenAnswer((_) async {});
      when(
        () => mockLocal.getEmployee(any()),
      ).thenAnswer((_) async => tServerEmployee);
      when(() => mockLocal.updateEmployee(any())).thenAnswer((_) async {});

      // queue must enforce order 1 by 1
      repository.createEmployee(tNewEmployee);
      repository.updateEmployee(tServerEmployee);

      await repository.syncQueue.onComplete;

      verify(() => mockRemote.createEmployee(any())).called(1);
      verify(() => mockRemote.updateEmployee(any(), any())).called(1);
    });
  });
  group('syncEmployees', () {
    test(
      'Should fetch remote data and replace local cache completely',
      () async {
        final tRemoteList = [
          tServerEmployee,
          tServerEmployee.copyWith(id: 101, employeeName: 'Employee 2'),
        ];

        when(
          () => mockRemote.getEmployees(),
        ).thenAnswer((_) async => tRemoteList);

        when(() => mockLocal.cacheEmployees(any())).thenAnswer((_) async {});

        await repository.syncEmployees();

        verify(() => mockRemote.getEmployees()).called(1);

        // check if exact remote list was saved
        verify(() => mockLocal.cacheEmployees(tRemoteList)).called(1);
      },
    );
  });
}
