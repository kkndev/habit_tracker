import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_settings_entity.freezed.dart';

@freezed
class UserSettingsEntity with _$UserSettingsEntity {
  const factory UserSettingsEntity({
    @Default('') String language,
    @Default('') String theme,
  }) = _UserSettingsEntity;
}

const UserSettingsEntity initUserSettingsEntity = UserSettingsEntity(
  language: '',
  theme: '',
);
