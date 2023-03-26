import '../../domain/entity/entity.dart';

abstract class CoreLocalDataSource {
  Future<bool> initApp();
  Future<bool> updateUserSettings({
    required String language,
    required String theme,
  });
  Future<UserSettingsEntity> loadUserSettings();
}

const String coreBox = 'coreBox';
const String settingsBox = 'settingsBox';
