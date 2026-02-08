// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'employee_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$EmployeeModel {

 int get id;@JsonKey(name: 'employee_name') String get employeeName;@JsonKey(name: 'employee_salary', fromJson: _toString) String get employeeSalary;@JsonKey(name: 'employee_age', fromJson: _toString) String get employeeAge;@JsonKey(name: 'profile_image', defaultValue: '') String get profileImage;
/// Create a copy of EmployeeModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EmployeeModelCopyWith<EmployeeModel> get copyWith => _$EmployeeModelCopyWithImpl<EmployeeModel>(this as EmployeeModel, _$identity);

  /// Serializes this EmployeeModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EmployeeModel&&(identical(other.id, id) || other.id == id)&&(identical(other.employeeName, employeeName) || other.employeeName == employeeName)&&(identical(other.employeeSalary, employeeSalary) || other.employeeSalary == employeeSalary)&&(identical(other.employeeAge, employeeAge) || other.employeeAge == employeeAge)&&(identical(other.profileImage, profileImage) || other.profileImage == profileImage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,employeeName,employeeSalary,employeeAge,profileImage);

@override
String toString() {
  return 'EmployeeModel(id: $id, employeeName: $employeeName, employeeSalary: $employeeSalary, employeeAge: $employeeAge, profileImage: $profileImage)';
}


}

/// @nodoc
abstract mixin class $EmployeeModelCopyWith<$Res>  {
  factory $EmployeeModelCopyWith(EmployeeModel value, $Res Function(EmployeeModel) _then) = _$EmployeeModelCopyWithImpl;
@useResult
$Res call({
 int id,@JsonKey(name: 'employee_name') String employeeName,@JsonKey(name: 'employee_salary', fromJson: _toString) String employeeSalary,@JsonKey(name: 'employee_age', fromJson: _toString) String employeeAge,@JsonKey(name: 'profile_image', defaultValue: '') String profileImage
});




}
/// @nodoc
class _$EmployeeModelCopyWithImpl<$Res>
    implements $EmployeeModelCopyWith<$Res> {
  _$EmployeeModelCopyWithImpl(this._self, this._then);

  final EmployeeModel _self;
  final $Res Function(EmployeeModel) _then;

/// Create a copy of EmployeeModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? employeeName = null,Object? employeeSalary = null,Object? employeeAge = null,Object? profileImage = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,employeeName: null == employeeName ? _self.employeeName : employeeName // ignore: cast_nullable_to_non_nullable
as String,employeeSalary: null == employeeSalary ? _self.employeeSalary : employeeSalary // ignore: cast_nullable_to_non_nullable
as String,employeeAge: null == employeeAge ? _self.employeeAge : employeeAge // ignore: cast_nullable_to_non_nullable
as String,profileImage: null == profileImage ? _self.profileImage : profileImage // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [EmployeeModel].
extension EmployeeModelPatterns on EmployeeModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EmployeeModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EmployeeModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EmployeeModel value)  $default,){
final _that = this;
switch (_that) {
case _EmployeeModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EmployeeModel value)?  $default,){
final _that = this;
switch (_that) {
case _EmployeeModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id, @JsonKey(name: 'employee_name')  String employeeName, @JsonKey(name: 'employee_salary', fromJson: _toString)  String employeeSalary, @JsonKey(name: 'employee_age', fromJson: _toString)  String employeeAge, @JsonKey(name: 'profile_image', defaultValue: '')  String profileImage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EmployeeModel() when $default != null:
return $default(_that.id,_that.employeeName,_that.employeeSalary,_that.employeeAge,_that.profileImage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id, @JsonKey(name: 'employee_name')  String employeeName, @JsonKey(name: 'employee_salary', fromJson: _toString)  String employeeSalary, @JsonKey(name: 'employee_age', fromJson: _toString)  String employeeAge, @JsonKey(name: 'profile_image', defaultValue: '')  String profileImage)  $default,) {final _that = this;
switch (_that) {
case _EmployeeModel():
return $default(_that.id,_that.employeeName,_that.employeeSalary,_that.employeeAge,_that.profileImage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id, @JsonKey(name: 'employee_name')  String employeeName, @JsonKey(name: 'employee_salary', fromJson: _toString)  String employeeSalary, @JsonKey(name: 'employee_age', fromJson: _toString)  String employeeAge, @JsonKey(name: 'profile_image', defaultValue: '')  String profileImage)?  $default,) {final _that = this;
switch (_that) {
case _EmployeeModel() when $default != null:
return $default(_that.id,_that.employeeName,_that.employeeSalary,_that.employeeAge,_that.profileImage);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _EmployeeModel implements EmployeeModel {
  const _EmployeeModel({required this.id, @JsonKey(name: 'employee_name') required this.employeeName, @JsonKey(name: 'employee_salary', fromJson: _toString) required this.employeeSalary, @JsonKey(name: 'employee_age', fromJson: _toString) required this.employeeAge, @JsonKey(name: 'profile_image', defaultValue: '') required this.profileImage});
  factory _EmployeeModel.fromJson(Map<String, dynamic> json) => _$EmployeeModelFromJson(json);

@override final  int id;
@override@JsonKey(name: 'employee_name') final  String employeeName;
@override@JsonKey(name: 'employee_salary', fromJson: _toString) final  String employeeSalary;
@override@JsonKey(name: 'employee_age', fromJson: _toString) final  String employeeAge;
@override@JsonKey(name: 'profile_image', defaultValue: '') final  String profileImage;

/// Create a copy of EmployeeModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EmployeeModelCopyWith<_EmployeeModel> get copyWith => __$EmployeeModelCopyWithImpl<_EmployeeModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EmployeeModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EmployeeModel&&(identical(other.id, id) || other.id == id)&&(identical(other.employeeName, employeeName) || other.employeeName == employeeName)&&(identical(other.employeeSalary, employeeSalary) || other.employeeSalary == employeeSalary)&&(identical(other.employeeAge, employeeAge) || other.employeeAge == employeeAge)&&(identical(other.profileImage, profileImage) || other.profileImage == profileImage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,employeeName,employeeSalary,employeeAge,profileImage);

@override
String toString() {
  return 'EmployeeModel(id: $id, employeeName: $employeeName, employeeSalary: $employeeSalary, employeeAge: $employeeAge, profileImage: $profileImage)';
}


}

/// @nodoc
abstract mixin class _$EmployeeModelCopyWith<$Res> implements $EmployeeModelCopyWith<$Res> {
  factory _$EmployeeModelCopyWith(_EmployeeModel value, $Res Function(_EmployeeModel) _then) = __$EmployeeModelCopyWithImpl;
@override @useResult
$Res call({
 int id,@JsonKey(name: 'employee_name') String employeeName,@JsonKey(name: 'employee_salary', fromJson: _toString) String employeeSalary,@JsonKey(name: 'employee_age', fromJson: _toString) String employeeAge,@JsonKey(name: 'profile_image', defaultValue: '') String profileImage
});




}
/// @nodoc
class __$EmployeeModelCopyWithImpl<$Res>
    implements _$EmployeeModelCopyWith<$Res> {
  __$EmployeeModelCopyWithImpl(this._self, this._then);

  final _EmployeeModel _self;
  final $Res Function(_EmployeeModel) _then;

/// Create a copy of EmployeeModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? employeeName = null,Object? employeeSalary = null,Object? employeeAge = null,Object? profileImage = null,}) {
  return _then(_EmployeeModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,employeeName: null == employeeName ? _self.employeeName : employeeName // ignore: cast_nullable_to_non_nullable
as String,employeeSalary: null == employeeSalary ? _self.employeeSalary : employeeSalary // ignore: cast_nullable_to_non_nullable
as String,employeeAge: null == employeeAge ? _self.employeeAge : employeeAge // ignore: cast_nullable_to_non_nullable
as String,profileImage: null == profileImage ? _self.profileImage : profileImage // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
