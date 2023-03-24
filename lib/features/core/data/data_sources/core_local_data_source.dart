abstract class CoreLocalDataSource {
  Future<bool> initApp();
  Future<bool> updateUserSettings({
    required String language,
    required String theme,
  });
}

const String coreBox = 'coreBox';
const String settingsBox = 'settingsBox';
