// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_settings_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserSettingsEntity {
  String get language => throw _privateConstructorUsedError;
  String get theme => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserSettingsEntityCopyWith<UserSettingsEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserSettingsEntityCopyWith<$Res> {
  factory $UserSettingsEntityCopyWith(
          UserSettingsEntity value, $Res Function(UserSettingsEntity) then) =
      _$UserSettingsEntityCopyWithImpl<$Res, UserSettingsEntity>;
  @useResult
  $Res call({String language, String theme});
}

/// @nodoc
class _$UserSettingsEntityCopyWithImpl<$Res, $Val extends UserSettingsEntity>
    implements $UserSettingsEntityCopyWith<$Res> {
  _$UserSettingsEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? language = null,
    Object? theme = null,
  }) {
    return _then(_value.copyWith(
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      theme: null == theme
          ? _value.theme
          : theme // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserSettingsEntityCopyWith<$Res>
    implements $UserSettingsEntityCopyWith<$Res> {
  factory _$$_UserSettingsEntityCopyWith(_$_UserSettingsEntity value,
          $Res Function(_$_UserSettingsEntity) then) =
      __$$_UserSettingsEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String language, String theme});
}

/// @nodoc
class __$$_UserSettingsEntityCopyWithImpl<$Res>
    extends _$UserSettingsEntityCopyWithImpl<$Res, _$_UserSettingsEntity>
    implements _$$_UserSettingsEntityCopyWith<$Res> {
  __$$_UserSettingsEntityCopyWithImpl(
      _$_UserSettingsEntity _value, $Res Function(_$_UserSettingsEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? language = null,
    Object? theme = null,
  }) {
    return _then(_$_UserSettingsEntity(
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      theme: null == theme
          ? _value.theme
          : theme // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_UserSettingsEntity implements _UserSettingsEntity {
  const _$_UserSettingsEntity({this.language = '', this.theme = ''});

  @override
  @JsonKey()
  final String language;
  @override
  @JsonKey()
  final String theme;

  @override
  String toString() {
    return 'UserSettingsEntity(language: $language, theme: $theme)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserSettingsEntity &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.theme, theme) || other.theme == theme));
  }

  @override
  int get hashCode => Object.hash(runtimeType, language, theme);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserSettingsEntityCopyWith<_$_UserSettingsEntity> get copyWith =>
      __$$_UserSettingsEntityCopyWithImpl<_$_UserSettingsEntity>(
          this, _$identity);
}

abstract class _UserSettingsEntity implements UserSettingsEntity {
  const factory _UserSettingsEntity(
      {final String language, final String theme}) = _$_UserSettingsEntity;

  @override
  String get language;
  @override
  String get theme;
  @override
  @JsonKey(ignore: true)
  _$$_UserSettingsEntityCopyWith<_$_UserSettingsEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
