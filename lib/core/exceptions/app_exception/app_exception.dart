import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_exception.freezed.dart';

@freezed
sealed class AppException with _$AppException {
  const factory AppException.serverError({int? statusCode}) = _ServerError;

  const factory AppException.networkError() = _NetworkError;

  const factory AppException.validationError({
    String? message, // An optional msg from the api
    int? statusCode,
    Map<String, dynamic>? errors,
  }) = _ValidationError;

  const factory AppException.parseError({
    Object? error,
    StackTrace? stackTrace,
  }) = _ParseError;

  const factory AppException.tooManyRequests() = _TooManyRequests;

  const factory AppException.unknown({dynamic error, StackTrace? stackTrace}) =
      _Unknown;
}
