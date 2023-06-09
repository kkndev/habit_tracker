// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'core_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CoreState {
  String? get id => throw _privateConstructorUsedError;
  UserSettingsEntity get settings => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CoreStateCopyWith<CoreState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoreStateCopyWith<$Res> {
  factory $CoreStateCopyWith(CoreState value, $Res Function(CoreState) then) =
      _$CoreStateCopyWithImpl<$Res, CoreState>;
  @useResult
  $Res call({String? id, UserSettingsEntity settings, String? error});

  $UserSettingsEntityCopyWith<$Res> get settings;
}

/// @nodoc
class _$CoreStateCopyWithImpl<$Res, $Val extends CoreState>
    implements $CoreStateCopyWith<$Res> {
  _$CoreStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? settings = null,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      settings: null == settings
          ? _value.settings
          : settings // ignore: cast_nullable_to_non_nullable
              as UserSettingsEntity,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserSettingsEntityCopyWith<$Res> get settings {
    return $UserSettingsEntityCopyWith<$Res>(_value.settings, (value) {
      return _then(_value.copyWith(settings: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CoreStateCopyWith<$Res> implements $CoreStateCopyWith<$Res> {
  factory _$$_CoreStateCopyWith(
          _$_CoreState value, $Res Function(_$_CoreState) then) =
      __$$_CoreStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, UserSettingsEntity settings, String? error});

  @override
  $UserSettingsEntityCopyWith<$Res> get settings;
}

/// @nodoc
class __$$_CoreStateCopyWithImpl<$Res>
    extends _$CoreStateCopyWithImpl<$Res, _$_CoreState>
    implements _$$_CoreStateCopyWith<$Res> {
  __$$_CoreStateCopyWithImpl(
      _$_CoreState _value, $Res Function(_$_CoreState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? settings = null,
    Object? error = freezed,
  }) {
    return _then(_$_CoreState(
      freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      null == settings
          ? _value.settings
          : settings // ignore: cast_nullable_to_non_nullable
              as UserSettingsEntity,
      freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_CoreState implements _CoreState {
  _$_CoreState([this.id, this.settings = initUserSettingsEntity, this.error]);

  @override
  final String? id;
  @override
  @JsonKey()
  final UserSettingsEntity settings;
  @override
  final String? error;

  @override
  String toString() {
    return 'CoreState(id: $id, settings: $settings, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CoreState &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.settings, settings) ||
                other.settings == settings) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, settings, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CoreStateCopyWith<_$_CoreState> get copyWith =>
      __$$_CoreStateCopyWithImpl<_$_CoreState>(this, _$identity);
}

abstract class _CoreState implements CoreState {
  factory _CoreState(
      [final String? id,
      final UserSettingsEntity settings,
      final String? error]) = _$_CoreState;

  @override
  String? get id;
  @override
  UserSettingsEntity get settings;
  @override
  String? get error;
  @override
  @JsonKey(ignore: true)
  _$$_CoreStateCopyWith<_$_CoreState> get copyWith =>
      throw _privateConstructorUsedError;
}
