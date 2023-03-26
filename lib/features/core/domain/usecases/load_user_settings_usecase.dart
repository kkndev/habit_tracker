import 'package:dartz/dartz.dart';

import '../entity/entity.dart';
import '../repositories/core_repository.dart';
import 'usecase.dart';

class LoadUserSettingsUseCase extends UseCase<UserSettingsEntity, NoParams> {
  final CoreRepository coreRepository;

  LoadUserSettingsUseCase(this.coreRepository);

  @override
  Future<Either<Failure, UserSettingsEntity>> call(NoParams params) async {
    return await coreRepository.loadUserSettings();
  }
}
