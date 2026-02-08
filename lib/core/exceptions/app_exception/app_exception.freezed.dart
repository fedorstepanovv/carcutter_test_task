// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_exception.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$AppException {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? statusCode) serverError,
    required TResult Function() networkError,
    required TResult Function(
      String? message,
      int? statusCode,
      Map<String, dynamic>? errors,
    )
    validationError,
    required TResult Function(Object? error, StackTrace? stackTrace) parseError,
    required TResult Function() tooManyRequests,
    required TResult Function(dynamic error, StackTrace? stackTrace) unknown,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? statusCode)? serverError,
    TResult? Function()? networkError,
    TResult? Function(
      String? message,
      int? statusCode,
      Map<String, dynamic>? errors,
    )?
    validationError,
    TResult? Function(Object? error, StackTrace? stackTrace)? parseError,
    TResult? Function()? tooManyRequests,
    TResult? Function(dynamic error, StackTrace? stackTrace)? unknown,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? statusCode)? serverError,
    TResult Function()? networkError,
    TResult Function(
      String? message,
      int? statusCode,
      Map<String, dynamic>? errors,
    )?
    validationError,
    TResult Function(Object? error, StackTrace? stackTrace)? parseError,
    TResult Function()? tooManyRequests,
    TResult Function(dynamic error, StackTrace? stackTrace)? unknown,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_NetworkError value) networkError,
    required TResult Function(_ValidationError value) validationError,
    required TResult Function(_ParseError value) parseError,
    required TResult Function(_TooManyRequests value) tooManyRequests,
    required TResult Function(_Unknown value) unknown,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_NetworkError value)? networkError,
    TResult? Function(_ValidationError value)? validationError,
    TResult? Function(_ParseError value)? parseError,
    TResult? Function(_TooManyRequests value)? tooManyRequests,
    TResult? Function(_Unknown value)? unknown,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_NetworkError value)? networkError,
    TResult Function(_ValidationError value)? validationError,
    TResult Function(_ParseError value)? parseError,
    TResult Function(_TooManyRequests value)? tooManyRequests,
    TResult Function(_Unknown value)? unknown,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppExceptionCopyWith<$Res> {
  factory $AppExceptionCopyWith(
    AppException value,
    $Res Function(AppException) then,
  ) = _$AppExceptionCopyWithImpl<$Res, AppException>;
}

/// @nodoc
class _$AppExceptionCopyWithImpl<$Res, $Val extends AppException>
    implements $AppExceptionCopyWith<$Res> {
  _$AppExceptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppException
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ServerErrorImplCopyWith<$Res> {
  factory _$$ServerErrorImplCopyWith(
    _$ServerErrorImpl value,
    $Res Function(_$ServerErrorImpl) then,
  ) = __$$ServerErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int? statusCode});
}

/// @nodoc
class __$$ServerErrorImplCopyWithImpl<$Res>
    extends _$AppExceptionCopyWithImpl<$Res, _$ServerErrorImpl>
    implements _$$ServerErrorImplCopyWith<$Res> {
  __$$ServerErrorImplCopyWithImpl(
    _$ServerErrorImpl _value,
    $Res Function(_$ServerErrorImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AppException
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? statusCode = freezed}) {
    return _then(
      _$ServerErrorImpl(
        statusCode: freezed == statusCode
            ? _value.statusCode
            : statusCode // ignore: cast_nullable_to_non_nullable
                  as int?,
      ),
    );
  }
}

/// @nodoc

class _$ServerErrorImpl implements _ServerError {
  const _$ServerErrorImpl({this.statusCode});

  @override
  final int? statusCode;

  @override
  String toString() {
    return 'AppException.serverError(statusCode: $statusCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServerErrorImpl &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, statusCode);

  /// Create a copy of AppException
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ServerErrorImplCopyWith<_$ServerErrorImpl> get copyWith =>
      __$$ServerErrorImplCopyWithImpl<_$ServerErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? statusCode) serverError,
    required TResult Function() networkError,
    required TResult Function(
      String? message,
      int? statusCode,
      Map<String, dynamic>? errors,
    )
    validationError,
    required TResult Function(Object? error, StackTrace? stackTrace) parseError,
    required TResult Function() tooManyRequests,
    required TResult Function(dynamic error, StackTrace? stackTrace) unknown,
  }) {
    return serverError(statusCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? statusCode)? serverError,
    TResult? Function()? networkError,
    TResult? Function(
      String? message,
      int? statusCode,
      Map<String, dynamic>? errors,
    )?
    validationError,
    TResult? Function(Object? error, StackTrace? stackTrace)? parseError,
    TResult? Function()? tooManyRequests,
    TResult? Function(dynamic error, StackTrace? stackTrace)? unknown,
  }) {
    return serverError?.call(statusCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? statusCode)? serverError,
    TResult Function()? networkError,
    TResult Function(
      String? message,
      int? statusCode,
      Map<String, dynamic>? errors,
    )?
    validationError,
    TResult Function(Object? error, StackTrace? stackTrace)? parseError,
    TResult Function()? tooManyRequests,
    TResult Function(dynamic error, StackTrace? stackTrace)? unknown,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(statusCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_NetworkError value) networkError,
    required TResult Function(_ValidationError value) validationError,
    required TResult Function(_ParseError value) parseError,
    required TResult Function(_TooManyRequests value) tooManyRequests,
    required TResult Function(_Unknown value) unknown,
  }) {
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_NetworkError value)? networkError,
    TResult? Function(_ValidationError value)? validationError,
    TResult? Function(_ParseError value)? parseError,
    TResult? Function(_TooManyRequests value)? tooManyRequests,
    TResult? Function(_Unknown value)? unknown,
  }) {
    return serverError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_NetworkError value)? networkError,
    TResult Function(_ValidationError value)? validationError,
    TResult Function(_ParseError value)? parseError,
    TResult Function(_TooManyRequests value)? tooManyRequests,
    TResult Function(_Unknown value)? unknown,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class _ServerError implements AppException {
  const factory _ServerError({final int? statusCode}) = _$ServerErrorImpl;

  int? get statusCode;

  /// Create a copy of AppException
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ServerErrorImplCopyWith<_$ServerErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NetworkErrorImplCopyWith<$Res> {
  factory _$$NetworkErrorImplCopyWith(
    _$NetworkErrorImpl value,
    $Res Function(_$NetworkErrorImpl) then,
  ) = __$$NetworkErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NetworkErrorImplCopyWithImpl<$Res>
    extends _$AppExceptionCopyWithImpl<$Res, _$NetworkErrorImpl>
    implements _$$NetworkErrorImplCopyWith<$Res> {
  __$$NetworkErrorImplCopyWithImpl(
    _$NetworkErrorImpl _value,
    $Res Function(_$NetworkErrorImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AppException
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$NetworkErrorImpl implements _NetworkError {
  const _$NetworkErrorImpl();

  @override
  String toString() {
    return 'AppException.networkError()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NetworkErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? statusCode) serverError,
    required TResult Function() networkError,
    required TResult Function(
      String? message,
      int? statusCode,
      Map<String, dynamic>? errors,
    )
    validationError,
    required TResult Function(Object? error, StackTrace? stackTrace) parseError,
    required TResult Function() tooManyRequests,
    required TResult Function(dynamic error, StackTrace? stackTrace) unknown,
  }) {
    return networkError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? statusCode)? serverError,
    TResult? Function()? networkError,
    TResult? Function(
      String? message,
      int? statusCode,
      Map<String, dynamic>? errors,
    )?
    validationError,
    TResult? Function(Object? error, StackTrace? stackTrace)? parseError,
    TResult? Function()? tooManyRequests,
    TResult? Function(dynamic error, StackTrace? stackTrace)? unknown,
  }) {
    return networkError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? statusCode)? serverError,
    TResult Function()? networkError,
    TResult Function(
      String? message,
      int? statusCode,
      Map<String, dynamic>? errors,
    )?
    validationError,
    TResult Function(Object? error, StackTrace? stackTrace)? parseError,
    TResult Function()? tooManyRequests,
    TResult Function(dynamic error, StackTrace? stackTrace)? unknown,
    required TResult orElse(),
  }) {
    if (networkError != null) {
      return networkError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_NetworkError value) networkError,
    required TResult Function(_ValidationError value) validationError,
    required TResult Function(_ParseError value) parseError,
    required TResult Function(_TooManyRequests value) tooManyRequests,
    required TResult Function(_Unknown value) unknown,
  }) {
    return networkError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_NetworkError value)? networkError,
    TResult? Function(_ValidationError value)? validationError,
    TResult? Function(_ParseError value)? parseError,
    TResult? Function(_TooManyRequests value)? tooManyRequests,
    TResult? Function(_Unknown value)? unknown,
  }) {
    return networkError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_NetworkError value)? networkError,
    TResult Function(_ValidationError value)? validationError,
    TResult Function(_ParseError value)? parseError,
    TResult Function(_TooManyRequests value)? tooManyRequests,
    TResult Function(_Unknown value)? unknown,
    required TResult orElse(),
  }) {
    if (networkError != null) {
      return networkError(this);
    }
    return orElse();
  }
}

abstract class _NetworkError implements AppException {
  const factory _NetworkError() = _$NetworkErrorImpl;
}

/// @nodoc
abstract class _$$ValidationErrorImplCopyWith<$Res> {
  factory _$$ValidationErrorImplCopyWith(
    _$ValidationErrorImpl value,
    $Res Function(_$ValidationErrorImpl) then,
  ) = __$$ValidationErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message, int? statusCode, Map<String, dynamic>? errors});
}

/// @nodoc
class __$$ValidationErrorImplCopyWithImpl<$Res>
    extends _$AppExceptionCopyWithImpl<$Res, _$ValidationErrorImpl>
    implements _$$ValidationErrorImplCopyWith<$Res> {
  __$$ValidationErrorImplCopyWithImpl(
    _$ValidationErrorImpl _value,
    $Res Function(_$ValidationErrorImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AppException
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? statusCode = freezed,
    Object? errors = freezed,
  }) {
    return _then(
      _$ValidationErrorImpl(
        message: freezed == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String?,
        statusCode: freezed == statusCode
            ? _value.statusCode
            : statusCode // ignore: cast_nullable_to_non_nullable
                  as int?,
        errors: freezed == errors
            ? _value._errors
            : errors // ignore: cast_nullable_to_non_nullable
                  as Map<String, dynamic>?,
      ),
    );
  }
}

/// @nodoc

class _$ValidationErrorImpl implements _ValidationError {
  const _$ValidationErrorImpl({
    this.message,
    this.statusCode,
    final Map<String, dynamic>? errors,
  }) : _errors = errors;

  @override
  final String? message;
  // An optional msg from the api
  @override
  final int? statusCode;
  final Map<String, dynamic>? _errors;
  @override
  Map<String, dynamic>? get errors {
    final value = _errors;
    if (value == null) return null;
    if (_errors is EqualUnmodifiableMapView) return _errors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'AppException.validationError(message: $message, statusCode: $statusCode, errors: $errors)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ValidationErrorImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode) &&
            const DeepCollectionEquality().equals(other._errors, _errors));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    message,
    statusCode,
    const DeepCollectionEquality().hash(_errors),
  );

  /// Create a copy of AppException
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ValidationErrorImplCopyWith<_$ValidationErrorImpl> get copyWith =>
      __$$ValidationErrorImplCopyWithImpl<_$ValidationErrorImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? statusCode) serverError,
    required TResult Function() networkError,
    required TResult Function(
      String? message,
      int? statusCode,
      Map<String, dynamic>? errors,
    )
    validationError,
    required TResult Function(Object? error, StackTrace? stackTrace) parseError,
    required TResult Function() tooManyRequests,
    required TResult Function(dynamic error, StackTrace? stackTrace) unknown,
  }) {
    return validationError(message, statusCode, errors);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? statusCode)? serverError,
    TResult? Function()? networkError,
    TResult? Function(
      String? message,
      int? statusCode,
      Map<String, dynamic>? errors,
    )?
    validationError,
    TResult? Function(Object? error, StackTrace? stackTrace)? parseError,
    TResult? Function()? tooManyRequests,
    TResult? Function(dynamic error, StackTrace? stackTrace)? unknown,
  }) {
    return validationError?.call(message, statusCode, errors);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? statusCode)? serverError,
    TResult Function()? networkError,
    TResult Function(
      String? message,
      int? statusCode,
      Map<String, dynamic>? errors,
    )?
    validationError,
    TResult Function(Object? error, StackTrace? stackTrace)? parseError,
    TResult Function()? tooManyRequests,
    TResult Function(dynamic error, StackTrace? stackTrace)? unknown,
    required TResult orElse(),
  }) {
    if (validationError != null) {
      return validationError(message, statusCode, errors);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_NetworkError value) networkError,
    required TResult Function(_ValidationError value) validationError,
    required TResult Function(_ParseError value) parseError,
    required TResult Function(_TooManyRequests value) tooManyRequests,
    required TResult Function(_Unknown value) unknown,
  }) {
    return validationError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_NetworkError value)? networkError,
    TResult? Function(_ValidationError value)? validationError,
    TResult? Function(_ParseError value)? parseError,
    TResult? Function(_TooManyRequests value)? tooManyRequests,
    TResult? Function(_Unknown value)? unknown,
  }) {
    return validationError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_NetworkError value)? networkError,
    TResult Function(_ValidationError value)? validationError,
    TResult Function(_ParseError value)? parseError,
    TResult Function(_TooManyRequests value)? tooManyRequests,
    TResult Function(_Unknown value)? unknown,
    required TResult orElse(),
  }) {
    if (validationError != null) {
      return validationError(this);
    }
    return orElse();
  }
}

abstract class _ValidationError implements AppException {
  const factory _ValidationError({
    final String? message,
    final int? statusCode,
    final Map<String, dynamic>? errors,
  }) = _$ValidationErrorImpl;

  String? get message; // An optional msg from the api
  int? get statusCode;
  Map<String, dynamic>? get errors;

  /// Create a copy of AppException
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ValidationErrorImplCopyWith<_$ValidationErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ParseErrorImplCopyWith<$Res> {
  factory _$$ParseErrorImplCopyWith(
    _$ParseErrorImpl value,
    $Res Function(_$ParseErrorImpl) then,
  ) = __$$ParseErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Object? error, StackTrace? stackTrace});
}

/// @nodoc
class __$$ParseErrorImplCopyWithImpl<$Res>
    extends _$AppExceptionCopyWithImpl<$Res, _$ParseErrorImpl>
    implements _$$ParseErrorImplCopyWith<$Res> {
  __$$ParseErrorImplCopyWithImpl(
    _$ParseErrorImpl _value,
    $Res Function(_$ParseErrorImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AppException
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? error = freezed, Object? stackTrace = freezed}) {
    return _then(
      _$ParseErrorImpl(
        error: freezed == error ? _value.error : error,
        stackTrace: freezed == stackTrace
            ? _value.stackTrace
            : stackTrace // ignore: cast_nullable_to_non_nullable
                  as StackTrace?,
      ),
    );
  }
}

/// @nodoc

class _$ParseErrorImpl implements _ParseError {
  const _$ParseErrorImpl({this.error, this.stackTrace});

  @override
  final Object? error;
  @override
  final StackTrace? stackTrace;

  @override
  String toString() {
    return 'AppException.parseError(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ParseErrorImpl &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(error),
    stackTrace,
  );

  /// Create a copy of AppException
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ParseErrorImplCopyWith<_$ParseErrorImpl> get copyWith =>
      __$$ParseErrorImplCopyWithImpl<_$ParseErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? statusCode) serverError,
    required TResult Function() networkError,
    required TResult Function(
      String? message,
      int? statusCode,
      Map<String, dynamic>? errors,
    )
    validationError,
    required TResult Function(Object? error, StackTrace? stackTrace) parseError,
    required TResult Function() tooManyRequests,
    required TResult Function(dynamic error, StackTrace? stackTrace) unknown,
  }) {
    return parseError(error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? statusCode)? serverError,
    TResult? Function()? networkError,
    TResult? Function(
      String? message,
      int? statusCode,
      Map<String, dynamic>? errors,
    )?
    validationError,
    TResult? Function(Object? error, StackTrace? stackTrace)? parseError,
    TResult? Function()? tooManyRequests,
    TResult? Function(dynamic error, StackTrace? stackTrace)? unknown,
  }) {
    return parseError?.call(error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? statusCode)? serverError,
    TResult Function()? networkError,
    TResult Function(
      String? message,
      int? statusCode,
      Map<String, dynamic>? errors,
    )?
    validationError,
    TResult Function(Object? error, StackTrace? stackTrace)? parseError,
    TResult Function()? tooManyRequests,
    TResult Function(dynamic error, StackTrace? stackTrace)? unknown,
    required TResult orElse(),
  }) {
    if (parseError != null) {
      return parseError(error, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_NetworkError value) networkError,
    required TResult Function(_ValidationError value) validationError,
    required TResult Function(_ParseError value) parseError,
    required TResult Function(_TooManyRequests value) tooManyRequests,
    required TResult Function(_Unknown value) unknown,
  }) {
    return parseError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_NetworkError value)? networkError,
    TResult? Function(_ValidationError value)? validationError,
    TResult? Function(_ParseError value)? parseError,
    TResult? Function(_TooManyRequests value)? tooManyRequests,
    TResult? Function(_Unknown value)? unknown,
  }) {
    return parseError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_NetworkError value)? networkError,
    TResult Function(_ValidationError value)? validationError,
    TResult Function(_ParseError value)? parseError,
    TResult Function(_TooManyRequests value)? tooManyRequests,
    TResult Function(_Unknown value)? unknown,
    required TResult orElse(),
  }) {
    if (parseError != null) {
      return parseError(this);
    }
    return orElse();
  }
}

abstract class _ParseError implements AppException {
  const factory _ParseError({
    final Object? error,
    final StackTrace? stackTrace,
  }) = _$ParseErrorImpl;

  Object? get error;
  StackTrace? get stackTrace;

  /// Create a copy of AppException
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ParseErrorImplCopyWith<_$ParseErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TooManyRequestsImplCopyWith<$Res> {
  factory _$$TooManyRequestsImplCopyWith(
    _$TooManyRequestsImpl value,
    $Res Function(_$TooManyRequestsImpl) then,
  ) = __$$TooManyRequestsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TooManyRequestsImplCopyWithImpl<$Res>
    extends _$AppExceptionCopyWithImpl<$Res, _$TooManyRequestsImpl>
    implements _$$TooManyRequestsImplCopyWith<$Res> {
  __$$TooManyRequestsImplCopyWithImpl(
    _$TooManyRequestsImpl _value,
    $Res Function(_$TooManyRequestsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AppException
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$TooManyRequestsImpl implements _TooManyRequests {
  const _$TooManyRequestsImpl();

  @override
  String toString() {
    return 'AppException.tooManyRequests()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TooManyRequestsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? statusCode) serverError,
    required TResult Function() networkError,
    required TResult Function(
      String? message,
      int? statusCode,
      Map<String, dynamic>? errors,
    )
    validationError,
    required TResult Function(Object? error, StackTrace? stackTrace) parseError,
    required TResult Function() tooManyRequests,
    required TResult Function(dynamic error, StackTrace? stackTrace) unknown,
  }) {
    return tooManyRequests();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? statusCode)? serverError,
    TResult? Function()? networkError,
    TResult? Function(
      String? message,
      int? statusCode,
      Map<String, dynamic>? errors,
    )?
    validationError,
    TResult? Function(Object? error, StackTrace? stackTrace)? parseError,
    TResult? Function()? tooManyRequests,
    TResult? Function(dynamic error, StackTrace? stackTrace)? unknown,
  }) {
    return tooManyRequests?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? statusCode)? serverError,
    TResult Function()? networkError,
    TResult Function(
      String? message,
      int? statusCode,
      Map<String, dynamic>? errors,
    )?
    validationError,
    TResult Function(Object? error, StackTrace? stackTrace)? parseError,
    TResult Function()? tooManyRequests,
    TResult Function(dynamic error, StackTrace? stackTrace)? unknown,
    required TResult orElse(),
  }) {
    if (tooManyRequests != null) {
      return tooManyRequests();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_NetworkError value) networkError,
    required TResult Function(_ValidationError value) validationError,
    required TResult Function(_ParseError value) parseError,
    required TResult Function(_TooManyRequests value) tooManyRequests,
    required TResult Function(_Unknown value) unknown,
  }) {
    return tooManyRequests(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_NetworkError value)? networkError,
    TResult? Function(_ValidationError value)? validationError,
    TResult? Function(_ParseError value)? parseError,
    TResult? Function(_TooManyRequests value)? tooManyRequests,
    TResult? Function(_Unknown value)? unknown,
  }) {
    return tooManyRequests?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_NetworkError value)? networkError,
    TResult Function(_ValidationError value)? validationError,
    TResult Function(_ParseError value)? parseError,
    TResult Function(_TooManyRequests value)? tooManyRequests,
    TResult Function(_Unknown value)? unknown,
    required TResult orElse(),
  }) {
    if (tooManyRequests != null) {
      return tooManyRequests(this);
    }
    return orElse();
  }
}

abstract class _TooManyRequests implements AppException {
  const factory _TooManyRequests() = _$TooManyRequestsImpl;
}

/// @nodoc
abstract class _$$UnknownImplCopyWith<$Res> {
  factory _$$UnknownImplCopyWith(
    _$UnknownImpl value,
    $Res Function(_$UnknownImpl) then,
  ) = __$$UnknownImplCopyWithImpl<$Res>;
  @useResult
  $Res call({dynamic error, StackTrace? stackTrace});
}

/// @nodoc
class __$$UnknownImplCopyWithImpl<$Res>
    extends _$AppExceptionCopyWithImpl<$Res, _$UnknownImpl>
    implements _$$UnknownImplCopyWith<$Res> {
  __$$UnknownImplCopyWithImpl(
    _$UnknownImpl _value,
    $Res Function(_$UnknownImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AppException
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? error = freezed, Object? stackTrace = freezed}) {
    return _then(
      _$UnknownImpl(
        error: freezed == error
            ? _value.error
            : error // ignore: cast_nullable_to_non_nullable
                  as dynamic,
        stackTrace: freezed == stackTrace
            ? _value.stackTrace
            : stackTrace // ignore: cast_nullable_to_non_nullable
                  as StackTrace?,
      ),
    );
  }
}

/// @nodoc

class _$UnknownImpl implements _Unknown {
  const _$UnknownImpl({this.error, this.stackTrace});

  @override
  final dynamic error;
  @override
  final StackTrace? stackTrace;

  @override
  String toString() {
    return 'AppException.unknown(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnknownImpl &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(error),
    stackTrace,
  );

  /// Create a copy of AppException
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UnknownImplCopyWith<_$UnknownImpl> get copyWith =>
      __$$UnknownImplCopyWithImpl<_$UnknownImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? statusCode) serverError,
    required TResult Function() networkError,
    required TResult Function(
      String? message,
      int? statusCode,
      Map<String, dynamic>? errors,
    )
    validationError,
    required TResult Function(Object? error, StackTrace? stackTrace) parseError,
    required TResult Function() tooManyRequests,
    required TResult Function(dynamic error, StackTrace? stackTrace) unknown,
  }) {
    return unknown(error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? statusCode)? serverError,
    TResult? Function()? networkError,
    TResult? Function(
      String? message,
      int? statusCode,
      Map<String, dynamic>? errors,
    )?
    validationError,
    TResult? Function(Object? error, StackTrace? stackTrace)? parseError,
    TResult? Function()? tooManyRequests,
    TResult? Function(dynamic error, StackTrace? stackTrace)? unknown,
  }) {
    return unknown?.call(error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? statusCode)? serverError,
    TResult Function()? networkError,
    TResult Function(
      String? message,
      int? statusCode,
      Map<String, dynamic>? errors,
    )?
    validationError,
    TResult Function(Object? error, StackTrace? stackTrace)? parseError,
    TResult Function()? tooManyRequests,
    TResult Function(dynamic error, StackTrace? stackTrace)? unknown,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(error, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_NetworkError value) networkError,
    required TResult Function(_ValidationError value) validationError,
    required TResult Function(_ParseError value) parseError,
    required TResult Function(_TooManyRequests value) tooManyRequests,
    required TResult Function(_Unknown value) unknown,
  }) {
    return unknown(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_NetworkError value)? networkError,
    TResult? Function(_ValidationError value)? validationError,
    TResult? Function(_ParseError value)? parseError,
    TResult? Function(_TooManyRequests value)? tooManyRequests,
    TResult? Function(_Unknown value)? unknown,
  }) {
    return unknown?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_NetworkError value)? networkError,
    TResult Function(_ValidationError value)? validationError,
    TResult Function(_ParseError value)? parseError,
    TResult Function(_TooManyRequests value)? tooManyRequests,
    TResult Function(_Unknown value)? unknown,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(this);
    }
    return orElse();
  }
}

abstract class _Unknown implements AppException {
  const factory _Unknown({final dynamic error, final StackTrace? stackTrace}) =
      _$UnknownImpl;

  dynamic get error;
  StackTrace? get stackTrace;

  /// Create a copy of AppException
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UnknownImplCopyWith<_$UnknownImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
