// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_exception.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AppException {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppException);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AppException()';
}


}

/// @nodoc
class $AppExceptionCopyWith<$Res>  {
$AppExceptionCopyWith(AppException _, $Res Function(AppException) __);
}


/// Adds pattern-matching-related methods to [AppException].
extension AppExceptionPatterns on AppException {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _ServerError value)?  serverError,TResult Function( _NetworkError value)?  networkError,TResult Function( _ValidationError value)?  validationError,TResult Function( _ParseError value)?  parseError,TResult Function( _TooManyRequests value)?  tooManyRequests,TResult Function( _Unknown value)?  unknown,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ServerError() when serverError != null:
return serverError(_that);case _NetworkError() when networkError != null:
return networkError(_that);case _ValidationError() when validationError != null:
return validationError(_that);case _ParseError() when parseError != null:
return parseError(_that);case _TooManyRequests() when tooManyRequests != null:
return tooManyRequests(_that);case _Unknown() when unknown != null:
return unknown(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _ServerError value)  serverError,required TResult Function( _NetworkError value)  networkError,required TResult Function( _ValidationError value)  validationError,required TResult Function( _ParseError value)  parseError,required TResult Function( _TooManyRequests value)  tooManyRequests,required TResult Function( _Unknown value)  unknown,}){
final _that = this;
switch (_that) {
case _ServerError():
return serverError(_that);case _NetworkError():
return networkError(_that);case _ValidationError():
return validationError(_that);case _ParseError():
return parseError(_that);case _TooManyRequests():
return tooManyRequests(_that);case _Unknown():
return unknown(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _ServerError value)?  serverError,TResult? Function( _NetworkError value)?  networkError,TResult? Function( _ValidationError value)?  validationError,TResult? Function( _ParseError value)?  parseError,TResult? Function( _TooManyRequests value)?  tooManyRequests,TResult? Function( _Unknown value)?  unknown,}){
final _that = this;
switch (_that) {
case _ServerError() when serverError != null:
return serverError(_that);case _NetworkError() when networkError != null:
return networkError(_that);case _ValidationError() when validationError != null:
return validationError(_that);case _ParseError() when parseError != null:
return parseError(_that);case _TooManyRequests() when tooManyRequests != null:
return tooManyRequests(_that);case _Unknown() when unknown != null:
return unknown(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( int? statusCode)?  serverError,TResult Function()?  networkError,TResult Function( String? message,  int? statusCode,  Map<String, dynamic>? errors)?  validationError,TResult Function( Object? error,  StackTrace? stackTrace)?  parseError,TResult Function()?  tooManyRequests,TResult Function( dynamic error,  StackTrace? stackTrace)?  unknown,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ServerError() when serverError != null:
return serverError(_that.statusCode);case _NetworkError() when networkError != null:
return networkError();case _ValidationError() when validationError != null:
return validationError(_that.message,_that.statusCode,_that.errors);case _ParseError() when parseError != null:
return parseError(_that.error,_that.stackTrace);case _TooManyRequests() when tooManyRequests != null:
return tooManyRequests();case _Unknown() when unknown != null:
return unknown(_that.error,_that.stackTrace);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( int? statusCode)  serverError,required TResult Function()  networkError,required TResult Function( String? message,  int? statusCode,  Map<String, dynamic>? errors)  validationError,required TResult Function( Object? error,  StackTrace? stackTrace)  parseError,required TResult Function()  tooManyRequests,required TResult Function( dynamic error,  StackTrace? stackTrace)  unknown,}) {final _that = this;
switch (_that) {
case _ServerError():
return serverError(_that.statusCode);case _NetworkError():
return networkError();case _ValidationError():
return validationError(_that.message,_that.statusCode,_that.errors);case _ParseError():
return parseError(_that.error,_that.stackTrace);case _TooManyRequests():
return tooManyRequests();case _Unknown():
return unknown(_that.error,_that.stackTrace);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( int? statusCode)?  serverError,TResult? Function()?  networkError,TResult? Function( String? message,  int? statusCode,  Map<String, dynamic>? errors)?  validationError,TResult? Function( Object? error,  StackTrace? stackTrace)?  parseError,TResult? Function()?  tooManyRequests,TResult? Function( dynamic error,  StackTrace? stackTrace)?  unknown,}) {final _that = this;
switch (_that) {
case _ServerError() when serverError != null:
return serverError(_that.statusCode);case _NetworkError() when networkError != null:
return networkError();case _ValidationError() when validationError != null:
return validationError(_that.message,_that.statusCode,_that.errors);case _ParseError() when parseError != null:
return parseError(_that.error,_that.stackTrace);case _TooManyRequests() when tooManyRequests != null:
return tooManyRequests();case _Unknown() when unknown != null:
return unknown(_that.error,_that.stackTrace);case _:
  return null;

}
}

}

/// @nodoc


class _ServerError implements AppException {
  const _ServerError({this.statusCode});
  

 final  int? statusCode;

/// Create a copy of AppException
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ServerErrorCopyWith<_ServerError> get copyWith => __$ServerErrorCopyWithImpl<_ServerError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ServerError&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode));
}


@override
int get hashCode => Object.hash(runtimeType,statusCode);

@override
String toString() {
  return 'AppException.serverError(statusCode: $statusCode)';
}


}

/// @nodoc
abstract mixin class _$ServerErrorCopyWith<$Res> implements $AppExceptionCopyWith<$Res> {
  factory _$ServerErrorCopyWith(_ServerError value, $Res Function(_ServerError) _then) = __$ServerErrorCopyWithImpl;
@useResult
$Res call({
 int? statusCode
});




}
/// @nodoc
class __$ServerErrorCopyWithImpl<$Res>
    implements _$ServerErrorCopyWith<$Res> {
  __$ServerErrorCopyWithImpl(this._self, this._then);

  final _ServerError _self;
  final $Res Function(_ServerError) _then;

/// Create a copy of AppException
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? statusCode = freezed,}) {
  return _then(_ServerError(
statusCode: freezed == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

/// @nodoc


class _NetworkError implements AppException {
  const _NetworkError();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NetworkError);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AppException.networkError()';
}


}




/// @nodoc


class _ValidationError implements AppException {
  const _ValidationError({this.message, this.statusCode, final  Map<String, dynamic>? errors}): _errors = errors;
  

 final  String? message;
// An optional msg from the api
 final  int? statusCode;
 final  Map<String, dynamic>? _errors;
 Map<String, dynamic>? get errors {
  final value = _errors;
  if (value == null) return null;
  if (_errors is EqualUnmodifiableMapView) return _errors;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}


/// Create a copy of AppException
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ValidationErrorCopyWith<_ValidationError> get copyWith => __$ValidationErrorCopyWithImpl<_ValidationError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ValidationError&&(identical(other.message, message) || other.message == message)&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&const DeepCollectionEquality().equals(other._errors, _errors));
}


@override
int get hashCode => Object.hash(runtimeType,message,statusCode,const DeepCollectionEquality().hash(_errors));

@override
String toString() {
  return 'AppException.validationError(message: $message, statusCode: $statusCode, errors: $errors)';
}


}

/// @nodoc
abstract mixin class _$ValidationErrorCopyWith<$Res> implements $AppExceptionCopyWith<$Res> {
  factory _$ValidationErrorCopyWith(_ValidationError value, $Res Function(_ValidationError) _then) = __$ValidationErrorCopyWithImpl;
@useResult
$Res call({
 String? message, int? statusCode, Map<String, dynamic>? errors
});




}
/// @nodoc
class __$ValidationErrorCopyWithImpl<$Res>
    implements _$ValidationErrorCopyWith<$Res> {
  __$ValidationErrorCopyWithImpl(this._self, this._then);

  final _ValidationError _self;
  final $Res Function(_ValidationError) _then;

/// Create a copy of AppException
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = freezed,Object? statusCode = freezed,Object? errors = freezed,}) {
  return _then(_ValidationError(
message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,statusCode: freezed == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as int?,errors: freezed == errors ? _self._errors : errors // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}


}

/// @nodoc


class _ParseError implements AppException {
  const _ParseError({this.error, this.stackTrace});
  

 final  Object? error;
 final  StackTrace? stackTrace;

/// Create a copy of AppException
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ParseErrorCopyWith<_ParseError> get copyWith => __$ParseErrorCopyWithImpl<_ParseError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ParseError&&const DeepCollectionEquality().equals(other.error, error)&&(identical(other.stackTrace, stackTrace) || other.stackTrace == stackTrace));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(error),stackTrace);

@override
String toString() {
  return 'AppException.parseError(error: $error, stackTrace: $stackTrace)';
}


}

/// @nodoc
abstract mixin class _$ParseErrorCopyWith<$Res> implements $AppExceptionCopyWith<$Res> {
  factory _$ParseErrorCopyWith(_ParseError value, $Res Function(_ParseError) _then) = __$ParseErrorCopyWithImpl;
@useResult
$Res call({
 Object? error, StackTrace? stackTrace
});




}
/// @nodoc
class __$ParseErrorCopyWithImpl<$Res>
    implements _$ParseErrorCopyWith<$Res> {
  __$ParseErrorCopyWithImpl(this._self, this._then);

  final _ParseError _self;
  final $Res Function(_ParseError) _then;

/// Create a copy of AppException
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = freezed,Object? stackTrace = freezed,}) {
  return _then(_ParseError(
error: freezed == error ? _self.error : error ,stackTrace: freezed == stackTrace ? _self.stackTrace : stackTrace // ignore: cast_nullable_to_non_nullable
as StackTrace?,
  ));
}


}

/// @nodoc


class _TooManyRequests implements AppException {
  const _TooManyRequests();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TooManyRequests);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AppException.tooManyRequests()';
}


}




/// @nodoc


class _Unknown implements AppException {
  const _Unknown({this.error, this.stackTrace});
  

 final  dynamic error;
 final  StackTrace? stackTrace;

/// Create a copy of AppException
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UnknownCopyWith<_Unknown> get copyWith => __$UnknownCopyWithImpl<_Unknown>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Unknown&&const DeepCollectionEquality().equals(other.error, error)&&(identical(other.stackTrace, stackTrace) || other.stackTrace == stackTrace));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(error),stackTrace);

@override
String toString() {
  return 'AppException.unknown(error: $error, stackTrace: $stackTrace)';
}


}

/// @nodoc
abstract mixin class _$UnknownCopyWith<$Res> implements $AppExceptionCopyWith<$Res> {
  factory _$UnknownCopyWith(_Unknown value, $Res Function(_Unknown) _then) = __$UnknownCopyWithImpl;
@useResult
$Res call({
 dynamic error, StackTrace? stackTrace
});




}
/// @nodoc
class __$UnknownCopyWithImpl<$Res>
    implements _$UnknownCopyWith<$Res> {
  __$UnknownCopyWithImpl(this._self, this._then);

  final _Unknown _self;
  final $Res Function(_Unknown) _then;

/// Create a copy of AppException
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = freezed,Object? stackTrace = freezed,}) {
  return _then(_Unknown(
error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as dynamic,stackTrace: freezed == stackTrace ? _self.stackTrace : stackTrace // ignore: cast_nullable_to_non_nullable
as StackTrace?,
  ));
}


}

// dart format on
