// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'employees_feed_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$EmployeesFeedState {

 EmployeesFeedStatus get status; List<EmployeeModel> get employees; AppException? get failure; bool get isSyncing;
/// Create a copy of EmployeesFeedState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EmployeesFeedStateCopyWith<EmployeesFeedState> get copyWith => _$EmployeesFeedStateCopyWithImpl<EmployeesFeedState>(this as EmployeesFeedState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EmployeesFeedState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.employees, employees)&&(identical(other.failure, failure) || other.failure == failure)&&(identical(other.isSyncing, isSyncing) || other.isSyncing == isSyncing));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(employees),failure,isSyncing);

@override
String toString() {
  return 'EmployeesFeedState(status: $status, employees: $employees, failure: $failure, isSyncing: $isSyncing)';
}


}

/// @nodoc
abstract mixin class $EmployeesFeedStateCopyWith<$Res>  {
  factory $EmployeesFeedStateCopyWith(EmployeesFeedState value, $Res Function(EmployeesFeedState) _then) = _$EmployeesFeedStateCopyWithImpl;
@useResult
$Res call({
 EmployeesFeedStatus status, List<EmployeeModel> employees, AppException? failure, bool isSyncing
});


$AppExceptionCopyWith<$Res>? get failure;

}
/// @nodoc
class _$EmployeesFeedStateCopyWithImpl<$Res>
    implements $EmployeesFeedStateCopyWith<$Res> {
  _$EmployeesFeedStateCopyWithImpl(this._self, this._then);

  final EmployeesFeedState _self;
  final $Res Function(EmployeesFeedState) _then;

/// Create a copy of EmployeesFeedState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? employees = null,Object? failure = freezed,Object? isSyncing = null,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as EmployeesFeedStatus,employees: null == employees ? _self.employees : employees // ignore: cast_nullable_to_non_nullable
as List<EmployeeModel>,failure: freezed == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as AppException?,isSyncing: null == isSyncing ? _self.isSyncing : isSyncing // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of EmployeesFeedState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AppExceptionCopyWith<$Res>? get failure {
    if (_self.failure == null) {
    return null;
  }

  return $AppExceptionCopyWith<$Res>(_self.failure!, (value) {
    return _then(_self.copyWith(failure: value));
  });
}
}


/// Adds pattern-matching-related methods to [EmployeesFeedState].
extension EmployeesFeedStatePatterns on EmployeesFeedState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EmployeesFeedState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EmployeesFeedState() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EmployeesFeedState value)  $default,){
final _that = this;
switch (_that) {
case _EmployeesFeedState():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EmployeesFeedState value)?  $default,){
final _that = this;
switch (_that) {
case _EmployeesFeedState() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( EmployeesFeedStatus status,  List<EmployeeModel> employees,  AppException? failure,  bool isSyncing)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EmployeesFeedState() when $default != null:
return $default(_that.status,_that.employees,_that.failure,_that.isSyncing);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( EmployeesFeedStatus status,  List<EmployeeModel> employees,  AppException? failure,  bool isSyncing)  $default,) {final _that = this;
switch (_that) {
case _EmployeesFeedState():
return $default(_that.status,_that.employees,_that.failure,_that.isSyncing);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( EmployeesFeedStatus status,  List<EmployeeModel> employees,  AppException? failure,  bool isSyncing)?  $default,) {final _that = this;
switch (_that) {
case _EmployeesFeedState() when $default != null:
return $default(_that.status,_that.employees,_that.failure,_that.isSyncing);case _:
  return null;

}
}

}

/// @nodoc


class _EmployeesFeedState implements EmployeesFeedState {
  const _EmployeesFeedState({this.status = EmployeesFeedStatus.initial, final  List<EmployeeModel> employees = const [], this.failure, this.isSyncing = false}): _employees = employees;
  

@override@JsonKey() final  EmployeesFeedStatus status;
 final  List<EmployeeModel> _employees;
@override@JsonKey() List<EmployeeModel> get employees {
  if (_employees is EqualUnmodifiableListView) return _employees;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_employees);
}

@override final  AppException? failure;
@override@JsonKey() final  bool isSyncing;

/// Create a copy of EmployeesFeedState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EmployeesFeedStateCopyWith<_EmployeesFeedState> get copyWith => __$EmployeesFeedStateCopyWithImpl<_EmployeesFeedState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EmployeesFeedState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other._employees, _employees)&&(identical(other.failure, failure) || other.failure == failure)&&(identical(other.isSyncing, isSyncing) || other.isSyncing == isSyncing));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(_employees),failure,isSyncing);

@override
String toString() {
  return 'EmployeesFeedState(status: $status, employees: $employees, failure: $failure, isSyncing: $isSyncing)';
}


}

/// @nodoc
abstract mixin class _$EmployeesFeedStateCopyWith<$Res> implements $EmployeesFeedStateCopyWith<$Res> {
  factory _$EmployeesFeedStateCopyWith(_EmployeesFeedState value, $Res Function(_EmployeesFeedState) _then) = __$EmployeesFeedStateCopyWithImpl;
@override @useResult
$Res call({
 EmployeesFeedStatus status, List<EmployeeModel> employees, AppException? failure, bool isSyncing
});


@override $AppExceptionCopyWith<$Res>? get failure;

}
/// @nodoc
class __$EmployeesFeedStateCopyWithImpl<$Res>
    implements _$EmployeesFeedStateCopyWith<$Res> {
  __$EmployeesFeedStateCopyWithImpl(this._self, this._then);

  final _EmployeesFeedState _self;
  final $Res Function(_EmployeesFeedState) _then;

/// Create a copy of EmployeesFeedState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? employees = null,Object? failure = freezed,Object? isSyncing = null,}) {
  return _then(_EmployeesFeedState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as EmployeesFeedStatus,employees: null == employees ? _self._employees : employees // ignore: cast_nullable_to_non_nullable
as List<EmployeeModel>,failure: freezed == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as AppException?,isSyncing: null == isSyncing ? _self.isSyncing : isSyncing // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of EmployeesFeedState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AppExceptionCopyWith<$Res>? get failure {
    if (_self.failure == null) {
    return null;
  }

  return $AppExceptionCopyWith<$Res>(_self.failure!, (value) {
    return _then(_self.copyWith(failure: value));
  });
}
}

// dart format on
