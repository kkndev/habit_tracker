import 'package:habit_tracker/features/core/domain/entity/entity.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../models/models.dart';
import 'core_local_data_source.dart';

class CoreLocalDataSourceImpl implements CoreLocalDataSource {
  final HiveInterface storage;

  CoreLocalDataSourceImpl({required this.storage});

  @override
  Future<bool> initApp() async {
    try {
      await storage.openBox(coreBox);
    } on HiveError catch (e) {
      throw StorageException(
        code: e.hashCode,
        message: e.message,
      );
    }
    throw UnknownException();
  }

  @override
  Future<bool> updateUserSettings({
    required String language,
    required String theme,
  }) async {
    try {
      var settings = await storage.openBox(settingsBox);
      await settings.put('language', language);
      await settings.put('theme', theme);
      return true;
    } on HiveError catch (e) {
      throw StorageException(
        code: e.hashCode,
        message: e.message,
      );
    }
  }

  @override
  Future<UserSettingsEntity> loadUserSettings() async {
    try {
      var settings = await storage.openBox(settingsBox);
      var language = await settings.get('language');
      var theme = await settings.get('theme');
      return UserSettingsEntity(language: language, theme: theme);
    } on HiveError catch (e) {
      throw StorageException(
        code: e.hashCode,
        message: e.message,
      );
    }
  }
}
