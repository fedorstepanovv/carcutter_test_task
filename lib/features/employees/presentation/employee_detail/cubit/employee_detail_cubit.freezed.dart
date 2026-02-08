// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'employee_detail_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$EmployeeDetailState {

 RequiredEmployeeInput get name; RequiredEmployeeInput get salary; RequiredEmployeeInput get age; FormzSubmissionStatus get status; bool get isValid; AppException? get failure; int? get employeeId; bool get isEditing; bool get isSyncing;
/// Create a copy of EmployeeDetailState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EmployeeDetailStateCopyWith<EmployeeDetailState> get copyWith => _$EmployeeDetailStateCopyWithImpl<EmployeeDetailState>(this as EmployeeDetailState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EmployeeDetailState&&(identical(other.name, name) || other.name == name)&&(identical(other.salary, salary) || other.salary == salary)&&(identical(other.age, age) || other.age == age)&&(identical(other.status, status) || other.status == status)&&(identical(other.isValid, isValid) || other.isValid == isValid)&&(identical(other.failure, failure) || other.failure == failure)&&(identical(other.employeeId, employeeId) || other.employeeId == employeeId)&&(identical(other.isEditing, isEditing) || other.isEditing == isEditing)&&(identical(other.isSyncing, isSyncing) || other.isSyncing == isSyncing));
}


@override
int get hashCode => Object.hash(runtimeType,name,salary,age,status,isValid,failure,employeeId,isEditing,isSyncing);

@override
String toString() {
  return 'EmployeeDetailState(name: $name, salary: $salary, age: $age, status: $status, isValid: $isValid, failure: $failure, employeeId: $employeeId, isEditing: $isEditing, isSyncing: $isSyncing)';
}


}

/// @nodoc
abstract mixin class $EmployeeDetailStateCopyWith<$Res>  {
  factory $EmployeeDetailStateCopyWith(EmployeeDetailState value, $Res Function(EmployeeDetailState) _then) = _$EmployeeDetailStateCopyWithImpl;
@useResult
$Res call({
 RequiredEmployeeInput name, RequiredEmployeeInput salary, RequiredEmployeeInput age, FormzSubmissionStatus status, bool isValid, AppException? failure, int? employeeId, bool isEditing, bool isSyncing
});


$AppExceptionCopyWith<$Res>? get failure;

}
/// @nodoc
class _$EmployeeDetailStateCopyWithImpl<$Res>
    implements $EmployeeDetailStateCopyWith<$Res> {
  _$EmployeeDetailStateCopyWithImpl(this._self, this._then);

  final EmployeeDetailState _self;
  final $Res Function(EmployeeDetailState) _then;

/// Create a copy of EmployeeDetailState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? salary = null,Object? age = null,Object? status = null,Object? isValid = null,Object? failure = freezed,Object? employeeId = freezed,Object? isEditing = null,Object? isSyncing = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as RequiredEmployeeInput,salary: null == salary ? _self.salary : salary // ignore: cast_nullable_to_non_nullable
as RequiredEmployeeInput,age: null == age ? _self.age : age // ignore: cast_nullable_to_non_nullable
as RequiredEmployeeInput,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as FormzSubmissionStatus,isValid: null == isValid ? _self.isValid : isValid // ignore: cast_nullable_to_non_nullable
as bool,failure: freezed == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as AppException?,employeeId: freezed == employeeId ? _self.employeeId : employeeId // ignore: cast_nullable_to_non_nullable
as int?,isEditing: null == isEditing ? _self.isEditing : isEditing // ignore: cast_nullable_to_non_nullable
as bool,isSyncing: null == isSyncing ? _self.isSyncing : isSyncing // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of EmployeeDetailState
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


/// Adds pattern-matching-related methods to [EmployeeDetailState].
extension EmployeeDetailStatePatterns on EmployeeDetailState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EmployeeDetailState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EmployeeDetailState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EmployeeDetailState value)  $default,){
final _that = this;
switch (_that) {
case _EmployeeDetailState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EmployeeDetailState value)?  $default,){
final _that = this;
switch (_that) {
case _EmployeeDetailState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( RequiredEmployeeInput name,  RequiredEmployeeInput salary,  RequiredEmployeeInput age,  FormzSubmissionStatus status,  bool isValid,  AppException? failure,  int? employeeId,  bool isEditing,  bool isSyncing)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EmployeeDetailState() when $default != null:
return $default(_that.name,_that.salary,_that.age,_that.status,_that.isValid,_that.failure,_that.employeeId,_that.isEditing,_that.isSyncing);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( RequiredEmployeeInput name,  RequiredEmployeeInput salary,  RequiredEmployeeInput age,  FormzSubmissionStatus status,  bool isValid,  AppException? failure,  int? employeeId,  bool isEditing,  bool isSyncing)  $default,) {final _that = this;
switch (_that) {
case _EmployeeDetailState():
return $default(_that.name,_that.salary,_that.age,_that.status,_that.isValid,_that.failure,_that.employeeId,_that.isEditing,_that.isSyncing);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( RequiredEmployeeInput name,  RequiredEmployeeInput salary,  RequiredEmployeeInput age,  FormzSubmissionStatus status,  bool isValid,  AppException? failure,  int? employeeId,  bool isEditing,  bool isSyncing)?  $default,) {final _that = this;
switch (_that) {
case _EmployeeDetailState() when $default != null:
return $default(_that.name,_that.salary,_that.age,_that.status,_that.isValid,_that.failure,_that.employeeId,_that.isEditing,_that.isSyncing);case _:
  return null;

}
}

}

/// @nodoc


class _EmployeeDetailState extends EmployeeDetailState {
  const _EmployeeDetailState({this.name = const RequiredEmployeeInput.pure(), this.salary = const RequiredEmployeeInput.pure(), this.age = const RequiredEmployeeInput.pure(), this.status = FormzSubmissionStatus.initial, this.isValid = false, this.failure, this.employeeId, this.isEditing = true, this.isSyncing = false}): super._();
  

@override@JsonKey() final  RequiredEmployeeInput name;
@override@JsonKey() final  RequiredEmployeeInput salary;
@override@JsonKey() final  RequiredEmployeeInput age;
@override@JsonKey() final  FormzSubmissionStatus status;
@override@JsonKey() final  bool isValid;
@override final  AppException? failure;
@override final  int? employeeId;
@override@JsonKey() final  bool isEditing;
@override@JsonKey() final  bool isSyncing;

/// Create a copy of EmployeeDetailState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EmployeeDetailStateCopyWith<_EmployeeDetailState> get copyWith => __$EmployeeDetailStateCopyWithImpl<_EmployeeDetailState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EmployeeDetailState&&(identical(other.name, name) || other.name == name)&&(identical(other.salary, salary) || other.salary == salary)&&(identical(other.age, age) || other.age == age)&&(identical(other.status, status) || other.status == status)&&(identical(other.isValid, isValid) || other.isValid == isValid)&&(identical(other.failure, failure) || other.failure == failure)&&(identical(other.employeeId, employeeId) || other.employeeId == employeeId)&&(identical(other.isEditing, isEditing) || other.isEditing == isEditing)&&(identical(other.isSyncing, isSyncing) || other.isSyncing == isSyncing));
}


@override
int get hashCode => Object.hash(runtimeType,name,salary,age,status,isValid,failure,employeeId,isEditing,isSyncing);

@override
String toString() {
  return 'EmployeeDetailState(name: $name, salary: $salary, age: $age, status: $status, isValid: $isValid, failure: $failure, employeeId: $employeeId, isEditing: $isEditing, isSyncing: $isSyncing)';
}


}

/// @nodoc
abstract mixin class _$EmployeeDetailStateCopyWith<$Res> implements $EmployeeDetailStateCopyWith<$Res> {
  factory _$EmployeeDetailStateCopyWith(_EmployeeDetailState value, $Res Function(_EmployeeDetailState) _then) = __$EmployeeDetailStateCopyWithImpl;
@override @useResult
$Res call({
 RequiredEmployeeInput name, RequiredEmployeeInput salary, RequiredEmployeeInput age, FormzSubmissionStatus status, bool isValid, AppException? failure, int? employeeId, bool isEditing, bool isSyncing
});


@override $AppExceptionCopyWith<$Res>? get failure;

}
/// @nodoc
class __$EmployeeDetailStateCopyWithImpl<$Res>
    implements _$EmployeeDetailStateCopyWith<$Res> {
  __$EmployeeDetailStateCopyWithImpl(this._self, this._then);

  final _EmployeeDetailState _self;
  final $Res Function(_EmployeeDetailState) _then;

/// Create a copy of EmployeeDetailState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? salary = null,Object? age = null,Object? status = null,Object? isValid = null,Object? failure = freezed,Object? employeeId = freezed,Object? isEditing = null,Object? isSyncing = null,}) {
  return _then(_EmployeeDetailState(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as RequiredEmployeeInput,salary: null == salary ? _self.salary : salary // ignore: cast_nullable_to_non_nullable
as RequiredEmployeeInput,age: null == age ? _self.age : age // ignore: cast_nullable_to_non_nullable
as RequiredEmployeeInput,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as FormzSubmissionStatus,isValid: null == isValid ? _self.isValid : isValid // ignore: cast_nullable_to_non_nullable
as bool,failure: freezed == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as AppException?,employeeId: freezed == employeeId ? _self.employeeId : employeeId // ignore: cast_nullable_to_non_nullable
as int?,isEditing: null == isEditing ? _self.isEditing : isEditing // ignore: cast_nullable_to_non_nullable
as bool,isSyncing: null == isSyncing ? _self.isSyncing : isSyncing // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of EmployeeDetailState
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
