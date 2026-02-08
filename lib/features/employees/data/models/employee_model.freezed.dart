// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'employee_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

EmployeeModel _$EmployeeModelFromJson(Map<String, dynamic> json) {
  return _EmployeeModel.fromJson(json);
}

/// @nodoc
mixin _$EmployeeModel {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'employee_name')
  String get employeeName => throw _privateConstructorUsedError;
  @JsonKey(name: 'employee_salary', fromJson: _toString)
  String get employeeSalary => throw _privateConstructorUsedError;
  @JsonKey(name: 'employee_age', fromJson: _toString)
  String get employeeAge => throw _privateConstructorUsedError;
  @JsonKey(name: 'profile_image', defaultValue: '')
  String get profileImage => throw _privateConstructorUsedError;

  /// Serializes this EmployeeModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EmployeeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EmployeeModelCopyWith<EmployeeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmployeeModelCopyWith<$Res> {
  factory $EmployeeModelCopyWith(
    EmployeeModel value,
    $Res Function(EmployeeModel) then,
  ) = _$EmployeeModelCopyWithImpl<$Res, EmployeeModel>;
  @useResult
  $Res call({
    int id,
    @JsonKey(name: 'employee_name') String employeeName,
    @JsonKey(name: 'employee_salary', fromJson: _toString)
    String employeeSalary,
    @JsonKey(name: 'employee_age', fromJson: _toString) String employeeAge,
    @JsonKey(name: 'profile_image', defaultValue: '') String profileImage,
  });
}

/// @nodoc
class _$EmployeeModelCopyWithImpl<$Res, $Val extends EmployeeModel>
    implements $EmployeeModelCopyWith<$Res> {
  _$EmployeeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EmployeeModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? employeeName = null,
    Object? employeeSalary = null,
    Object? employeeAge = null,
    Object? profileImage = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            employeeName: null == employeeName
                ? _value.employeeName
                : employeeName // ignore: cast_nullable_to_non_nullable
                      as String,
            employeeSalary: null == employeeSalary
                ? _value.employeeSalary
                : employeeSalary // ignore: cast_nullable_to_non_nullable
                      as String,
            employeeAge: null == employeeAge
                ? _value.employeeAge
                : employeeAge // ignore: cast_nullable_to_non_nullable
                      as String,
            profileImage: null == profileImage
                ? _value.profileImage
                : profileImage // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$EmployeeModelImplCopyWith<$Res>
    implements $EmployeeModelCopyWith<$Res> {
  factory _$$EmployeeModelImplCopyWith(
    _$EmployeeModelImpl value,
    $Res Function(_$EmployeeModelImpl) then,
  ) = __$$EmployeeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    @JsonKey(name: 'employee_name') String employeeName,
    @JsonKey(name: 'employee_salary', fromJson: _toString)
    String employeeSalary,
    @JsonKey(name: 'employee_age', fromJson: _toString) String employeeAge,
    @JsonKey(name: 'profile_image', defaultValue: '') String profileImage,
  });
}

/// @nodoc
class __$$EmployeeModelImplCopyWithImpl<$Res>
    extends _$EmployeeModelCopyWithImpl<$Res, _$EmployeeModelImpl>
    implements _$$EmployeeModelImplCopyWith<$Res> {
  __$$EmployeeModelImplCopyWithImpl(
    _$EmployeeModelImpl _value,
    $Res Function(_$EmployeeModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of EmployeeModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? employeeName = null,
    Object? employeeSalary = null,
    Object? employeeAge = null,
    Object? profileImage = null,
  }) {
    return _then(
      _$EmployeeModelImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        employeeName: null == employeeName
            ? _value.employeeName
            : employeeName // ignore: cast_nullable_to_non_nullable
                  as String,
        employeeSalary: null == employeeSalary
            ? _value.employeeSalary
            : employeeSalary // ignore: cast_nullable_to_non_nullable
                  as String,
        employeeAge: null == employeeAge
            ? _value.employeeAge
            : employeeAge // ignore: cast_nullable_to_non_nullable
                  as String,
        profileImage: null == profileImage
            ? _value.profileImage
            : profileImage // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$EmployeeModelImpl implements _EmployeeModel {
  const _$EmployeeModelImpl({
    required this.id,
    @JsonKey(name: 'employee_name') required this.employeeName,
    @JsonKey(name: 'employee_salary', fromJson: _toString)
    required this.employeeSalary,
    @JsonKey(name: 'employee_age', fromJson: _toString)
    required this.employeeAge,
    @JsonKey(name: 'profile_image', defaultValue: '')
    required this.profileImage,
  });

  factory _$EmployeeModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$EmployeeModelImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'employee_name')
  final String employeeName;
  @override
  @JsonKey(name: 'employee_salary', fromJson: _toString)
  final String employeeSalary;
  @override
  @JsonKey(name: 'employee_age', fromJson: _toString)
  final String employeeAge;
  @override
  @JsonKey(name: 'profile_image', defaultValue: '')
  final String profileImage;

  @override
  String toString() {
    return 'EmployeeModel(id: $id, employeeName: $employeeName, employeeSalary: $employeeSalary, employeeAge: $employeeAge, profileImage: $profileImage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmployeeModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.employeeName, employeeName) ||
                other.employeeName == employeeName) &&
            (identical(other.employeeSalary, employeeSalary) ||
                other.employeeSalary == employeeSalary) &&
            (identical(other.employeeAge, employeeAge) ||
                other.employeeAge == employeeAge) &&
            (identical(other.profileImage, profileImage) ||
                other.profileImage == profileImage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    employeeName,
    employeeSalary,
    employeeAge,
    profileImage,
  );

  /// Create a copy of EmployeeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EmployeeModelImplCopyWith<_$EmployeeModelImpl> get copyWith =>
      __$$EmployeeModelImplCopyWithImpl<_$EmployeeModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EmployeeModelImplToJson(this);
  }
}

abstract class _EmployeeModel implements EmployeeModel {
  const factory _EmployeeModel({
    required final int id,
    @JsonKey(name: 'employee_name') required final String employeeName,
    @JsonKey(name: 'employee_salary', fromJson: _toString)
    required final String employeeSalary,
    @JsonKey(name: 'employee_age', fromJson: _toString)
    required final String employeeAge,
    @JsonKey(name: 'profile_image', defaultValue: '')
    required final String profileImage,
  }) = _$EmployeeModelImpl;

  factory _EmployeeModel.fromJson(Map<String, dynamic> json) =
      _$EmployeeModelImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'employee_name')
  String get employeeName;
  @override
  @JsonKey(name: 'employee_salary', fromJson: _toString)
  String get employeeSalary;
  @override
  @JsonKey(name: 'employee_age', fromJson: _toString)
  String get employeeAge;
  @override
  @JsonKey(name: 'profile_image', defaultValue: '')
  String get profileImage;

  /// Create a copy of EmployeeModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EmployeeModelImplCopyWith<_$EmployeeModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
