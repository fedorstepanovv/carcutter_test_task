// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'employees_feed_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$EmployeesFeedState {
  EmployeesFeedStatus get status => throw _privateConstructorUsedError;
  List<EmployeeModel> get employees => throw _privateConstructorUsedError;
  AppException? get failure => throw _privateConstructorUsedError;
  bool get isSyncing => throw _privateConstructorUsedError;

  /// Create a copy of EmployeesFeedState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EmployeesFeedStateCopyWith<EmployeesFeedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmployeesFeedStateCopyWith<$Res> {
  factory $EmployeesFeedStateCopyWith(
    EmployeesFeedState value,
    $Res Function(EmployeesFeedState) then,
  ) = _$EmployeesFeedStateCopyWithImpl<$Res, EmployeesFeedState>;
  @useResult
  $Res call({
    EmployeesFeedStatus status,
    List<EmployeeModel> employees,
    AppException? failure,
    bool isSyncing,
  });

  $AppExceptionCopyWith<$Res>? get failure;
}

/// @nodoc
class _$EmployeesFeedStateCopyWithImpl<$Res, $Val extends EmployeesFeedState>
    implements $EmployeesFeedStateCopyWith<$Res> {
  _$EmployeesFeedStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EmployeesFeedState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? employees = null,
    Object? failure = freezed,
    Object? isSyncing = null,
  }) {
    return _then(
      _value.copyWith(
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as EmployeesFeedStatus,
            employees: null == employees
                ? _value.employees
                : employees // ignore: cast_nullable_to_non_nullable
                      as List<EmployeeModel>,
            failure: freezed == failure
                ? _value.failure
                : failure // ignore: cast_nullable_to_non_nullable
                      as AppException?,
            isSyncing: null == isSyncing
                ? _value.isSyncing
                : isSyncing // ignore: cast_nullable_to_non_nullable
                      as bool,
          )
          as $Val,
    );
  }

  /// Create a copy of EmployeesFeedState
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
abstract class _$$EmployeesFeedStateImplCopyWith<$Res>
    implements $EmployeesFeedStateCopyWith<$Res> {
  factory _$$EmployeesFeedStateImplCopyWith(
    _$EmployeesFeedStateImpl value,
    $Res Function(_$EmployeesFeedStateImpl) then,
  ) = __$$EmployeesFeedStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    EmployeesFeedStatus status,
    List<EmployeeModel> employees,
    AppException? failure,
    bool isSyncing,
  });

  @override
  $AppExceptionCopyWith<$Res>? get failure;
}

/// @nodoc
class __$$EmployeesFeedStateImplCopyWithImpl<$Res>
    extends _$EmployeesFeedStateCopyWithImpl<$Res, _$EmployeesFeedStateImpl>
    implements _$$EmployeesFeedStateImplCopyWith<$Res> {
  __$$EmployeesFeedStateImplCopyWithImpl(
    _$EmployeesFeedStateImpl _value,
    $Res Function(_$EmployeesFeedStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of EmployeesFeedState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? employees = null,
    Object? failure = freezed,
    Object? isSyncing = null,
  }) {
    return _then(
      _$EmployeesFeedStateImpl(
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as EmployeesFeedStatus,
        employees: null == employees
            ? _value._employees
            : employees // ignore: cast_nullable_to_non_nullable
                  as List<EmployeeModel>,
        failure: freezed == failure
            ? _value.failure
            : failure // ignore: cast_nullable_to_non_nullable
                  as AppException?,
        isSyncing: null == isSyncing
            ? _value.isSyncing
            : isSyncing // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc

class _$EmployeesFeedStateImpl implements _EmployeesFeedState {
  const _$EmployeesFeedStateImpl({
    this.status = EmployeesFeedStatus.initial,
    final List<EmployeeModel> employees = const [],
    this.failure,
    this.isSyncing = false,
  }) : _employees = employees;

  @override
  @JsonKey()
  final EmployeesFeedStatus status;
  final List<EmployeeModel> _employees;
  @override
  @JsonKey()
  List<EmployeeModel> get employees {
    if (_employees is EqualUnmodifiableListView) return _employees;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_employees);
  }

  @override
  final AppException? failure;
  @override
  @JsonKey()
  final bool isSyncing;

  @override
  String toString() {
    return 'EmployeesFeedState(status: $status, employees: $employees, failure: $failure, isSyncing: $isSyncing)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmployeesFeedStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(
              other._employees,
              _employees,
            ) &&
            (identical(other.failure, failure) || other.failure == failure) &&
            (identical(other.isSyncing, isSyncing) ||
                other.isSyncing == isSyncing));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    status,
    const DeepCollectionEquality().hash(_employees),
    failure,
    isSyncing,
  );

  /// Create a copy of EmployeesFeedState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EmployeesFeedStateImplCopyWith<_$EmployeesFeedStateImpl> get copyWith =>
      __$$EmployeesFeedStateImplCopyWithImpl<_$EmployeesFeedStateImpl>(
        this,
        _$identity,
      );
}

abstract class _EmployeesFeedState implements EmployeesFeedState {
  const factory _EmployeesFeedState({
    final EmployeesFeedStatus status,
    final List<EmployeeModel> employees,
    final AppException? failure,
    final bool isSyncing,
  }) = _$EmployeesFeedStateImpl;

  @override
  EmployeesFeedStatus get status;
  @override
  List<EmployeeModel> get employees;
  @override
  AppException? get failure;
  @override
  bool get isSyncing;

  /// Create a copy of EmployeesFeedState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EmployeesFeedStateImplCopyWith<_$EmployeesFeedStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
