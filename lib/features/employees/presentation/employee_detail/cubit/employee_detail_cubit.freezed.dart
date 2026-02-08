// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'employee_detail_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$EmployeeDetailState {
  RequiredEmployeeInput get name => throw _privateConstructorUsedError;
  RequiredEmployeeInput get salary => throw _privateConstructorUsedError;
  RequiredEmployeeInput get age => throw _privateConstructorUsedError;
  FormzSubmissionStatus get status => throw _privateConstructorUsedError;
  bool get isValid => throw _privateConstructorUsedError;
  AppException? get failure => throw _privateConstructorUsedError;
  int? get employeeId => throw _privateConstructorUsedError;
  bool get isEditing => throw _privateConstructorUsedError;
  bool get isSyncing => throw _privateConstructorUsedError;

  /// Create a copy of EmployeeDetailState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EmployeeDetailStateCopyWith<EmployeeDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmployeeDetailStateCopyWith<$Res> {
  factory $EmployeeDetailStateCopyWith(
    EmployeeDetailState value,
    $Res Function(EmployeeDetailState) then,
  ) = _$EmployeeDetailStateCopyWithImpl<$Res, EmployeeDetailState>;
  @useResult
  $Res call({
    RequiredEmployeeInput name,
    RequiredEmployeeInput salary,
    RequiredEmployeeInput age,
    FormzSubmissionStatus status,
    bool isValid,
    AppException? failure,
    int? employeeId,
    bool isEditing,
    bool isSyncing,
  });

  $AppExceptionCopyWith<$Res>? get failure;
}

/// @nodoc
class _$EmployeeDetailStateCopyWithImpl<$Res, $Val extends EmployeeDetailState>
    implements $EmployeeDetailStateCopyWith<$Res> {
  _$EmployeeDetailStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EmployeeDetailState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? salary = null,
    Object? age = null,
    Object? status = null,
    Object? isValid = null,
    Object? failure = freezed,
    Object? employeeId = freezed,
    Object? isEditing = null,
    Object? isSyncing = null,
  }) {
    return _then(
      _value.copyWith(
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as RequiredEmployeeInput,
            salary: null == salary
                ? _value.salary
                : salary // ignore: cast_nullable_to_non_nullable
                      as RequiredEmployeeInput,
            age: null == age
                ? _value.age
                : age // ignore: cast_nullable_to_non_nullable
                      as RequiredEmployeeInput,
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as FormzSubmissionStatus,
            isValid: null == isValid
                ? _value.isValid
                : isValid // ignore: cast_nullable_to_non_nullable
                      as bool,
            failure: freezed == failure
                ? _value.failure
                : failure // ignore: cast_nullable_to_non_nullable
                      as AppException?,
            employeeId: freezed == employeeId
                ? _value.employeeId
                : employeeId // ignore: cast_nullable_to_non_nullable
                      as int?,
            isEditing: null == isEditing
                ? _value.isEditing
                : isEditing // ignore: cast_nullable_to_non_nullable
                      as bool,
            isSyncing: null == isSyncing
                ? _value.isSyncing
                : isSyncing // ignore: cast_nullable_to_non_nullable
                      as bool,
          )
          as $Val,
    );
  }

  /// Create a copy of EmployeeDetailState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AppExceptionCopyWith<$Res>? get failure {
    if (_value.failure == null) {
      return null;
    }

    return $AppExceptionCopyWith<$Res>(_value.failure!, (value) {
      return _then(_value.copyWith(failure: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$EmployeeDetailStateImplCopyWith<$Res>
    implements $EmployeeDetailStateCopyWith<$Res> {
  factory _$$EmployeeDetailStateImplCopyWith(
    _$EmployeeDetailStateImpl value,
    $Res Function(_$EmployeeDetailStateImpl) then,
  ) = __$$EmployeeDetailStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    RequiredEmployeeInput name,
    RequiredEmployeeInput salary,
    RequiredEmployeeInput age,
    FormzSubmissionStatus status,
    bool isValid,
    AppException? failure,
    int? employeeId,
    bool isEditing,
    bool isSyncing,
  });

  @override
  $AppExceptionCopyWith<$Res>? get failure;
}

/// @nodoc
class __$$EmployeeDetailStateImplCopyWithImpl<$Res>
    extends _$EmployeeDetailStateCopyWithImpl<$Res, _$EmployeeDetailStateImpl>
    implements _$$EmployeeDetailStateImplCopyWith<$Res> {
  __$$EmployeeDetailStateImplCopyWithImpl(
    _$EmployeeDetailStateImpl _value,
    $Res Function(_$EmployeeDetailStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of EmployeeDetailState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? salary = null,
    Object? age = null,
    Object? status = null,
    Object? isValid = null,
    Object? failure = freezed,
    Object? employeeId = freezed,
    Object? isEditing = null,
    Object? isSyncing = null,
  }) {
    return _then(
      _$EmployeeDetailStateImpl(
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as RequiredEmployeeInput,
        salary: null == salary
            ? _value.salary
            : salary // ignore: cast_nullable_to_non_nullable
                  as RequiredEmployeeInput,
        age: null == age
            ? _value.age
            : age // ignore: cast_nullable_to_non_nullable
                  as RequiredEmployeeInput,
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as FormzSubmissionStatus,
        isValid: null == isValid
            ? _value.isValid
            : isValid // ignore: cast_nullable_to_non_nullable
                  as bool,
        failure: freezed == failure
            ? _value.failure
            : failure // ignore: cast_nullable_to_non_nullable
                  as AppException?,
        employeeId: freezed == employeeId
            ? _value.employeeId
            : employeeId // ignore: cast_nullable_to_non_nullable
                  as int?,
        isEditing: null == isEditing
            ? _value.isEditing
            : isEditing // ignore: cast_nullable_to_non_nullable
                  as bool,
        isSyncing: null == isSyncing
            ? _value.isSyncing
            : isSyncing // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc

class _$EmployeeDetailStateImpl extends _EmployeeDetailState {
  const _$EmployeeDetailStateImpl({
    this.name = const RequiredEmployeeInput.pure(),
    this.salary = const RequiredEmployeeInput.pure(),
    this.age = const RequiredEmployeeInput.pure(),
    this.status = FormzSubmissionStatus.initial,
    this.isValid = false,
    this.failure,
    this.employeeId,
    this.isEditing = true,
    this.isSyncing = false,
  }) : super._();

  @override
  @JsonKey()
  final RequiredEmployeeInput name;
  @override
  @JsonKey()
  final RequiredEmployeeInput salary;
  @override
  @JsonKey()
  final RequiredEmployeeInput age;
  @override
  @JsonKey()
  final FormzSubmissionStatus status;
  @override
  @JsonKey()
  final bool isValid;
  @override
  final AppException? failure;
  @override
  final int? employeeId;
  @override
  @JsonKey()
  final bool isEditing;
  @override
  @JsonKey()
  final bool isSyncing;

  @override
  String toString() {
    return 'EmployeeDetailState(name: $name, salary: $salary, age: $age, status: $status, isValid: $isValid, failure: $failure, employeeId: $employeeId, isEditing: $isEditing, isSyncing: $isSyncing)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmployeeDetailStateImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.salary, salary) || other.salary == salary) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.isValid, isValid) || other.isValid == isValid) &&
            (identical(other.failure, failure) || other.failure == failure) &&
            (identical(other.employeeId, employeeId) ||
                other.employeeId == employeeId) &&
            (identical(other.isEditing, isEditing) ||
                other.isEditing == isEditing) &&
            (identical(other.isSyncing, isSyncing) ||
                other.isSyncing == isSyncing));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    name,
    salary,
    age,
    status,
    isValid,
    failure,
    employeeId,
    isEditing,
    isSyncing,
  );

  /// Create a copy of EmployeeDetailState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EmployeeDetailStateImplCopyWith<_$EmployeeDetailStateImpl> get copyWith =>
      __$$EmployeeDetailStateImplCopyWithImpl<_$EmployeeDetailStateImpl>(
        this,
        _$identity,
      );
}

abstract class _EmployeeDetailState extends EmployeeDetailState {
  const factory _EmployeeDetailState({
    final RequiredEmployeeInput name,
    final RequiredEmployeeInput salary,
    final RequiredEmployeeInput age,
    final FormzSubmissionStatus status,
    final bool isValid,
    final AppException? failure,
    final int? employeeId,
    final bool isEditing,
    final bool isSyncing,
  }) = _$EmployeeDetailStateImpl;
  const _EmployeeDetailState._() : super._();

  @override
  RequiredEmployeeInput get name;
  @override
  RequiredEmployeeInput get salary;
  @override
  RequiredEmployeeInput get age;
  @override
  FormzSubmissionStatus get status;
  @override
  bool get isValid;
  @override
  AppException? get failure;
  @override
  int? get employeeId;
  @override
  bool get isEditing;
  @override
  bool get isSyncing;

  /// Create a copy of EmployeeDetailState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EmployeeDetailStateImplCopyWith<_$EmployeeDetailStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
