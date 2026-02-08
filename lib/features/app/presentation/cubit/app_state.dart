part of 'app_cubit.dart';

@freezed
class AppState with _$AppState {
  const factory AppState.initial() = _Initial;

  const factory AppState.syncFailure({
    required AppException error,
    required int timestamp,
  }) = _SyncFailure;
}
