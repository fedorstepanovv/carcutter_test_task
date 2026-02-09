import 'dart:async';

import 'package:bloc_test/bloc_test.dart';
import 'package:carcutter_test/core/exceptions/exceptions.dart';
import 'package:carcutter_test/features/app/presentation/cubit/app_cubit.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../../employees/employees_mocks.dart';

void main() {
  late AppCubit appCubit;
  late MockEmployeeRepository mockRepository;

  setUp(() {
    mockRepository = MockEmployeeRepository();
  });

  group('AppCubit Tests', () {
    final tException = AppException.networkError();

    test('initial state should be AppState.initial', () {
      when(
        () => mockRepository.syncErrors,
      ).thenAnswer((_) => const Stream.empty());

      appCubit = AppCubit(mockRepository);

      expect(appCubit.state, const AppState.initial());
      appCubit.close();
    });

    blocTest<AppCubit, AppState>(
      'emits [AppState.syncFailure] when repository sends an error',
      setUp: () {
        when(
          () => mockRepository.syncErrors,
        ).thenAnswer((_) => Stream.value(tException));
      },
      build: () => AppCubit(mockRepository),
      expect: () => [
        isA<AppState>().having(
          (state) => state.mapOrNull(syncFailure: (s) => s.error),
          'error',
          tException,
        ),
      ],
    );

    test('should close subscription', () async {
      final controller = StreamController<AppException>();
      when(
        () => mockRepository.syncErrors,
      ).thenAnswer((_) => controller.stream);

      appCubit = AppCubit(mockRepository);

      await appCubit.close();

      expect(controller.hasListener, isFalse);
      await controller.close();
    });
  });
}
