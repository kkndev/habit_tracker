import 'package:dartz/dartz.dart';

import '../entity/entity.dart';

abstract class CoreRepository {
  Future<Either<Failure, bool>> initApp();
  Future<Either<Failure, bool>> updateUserSettings(UserSettingsEntity settings);
  Future<Either<Failure, UserSettingsEntity>> loadUserSettings();
}
