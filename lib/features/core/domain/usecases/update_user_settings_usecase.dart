import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '../entity/entity.dart';
import '../repositories/core_repository.dart';
import 'usecase.dart';

class UpdateUserSettingsUseCase
    extends UseCase<bool, UpdateUserSettingsUseCaseParams> {
  final CoreRepository coreRepository;

  UpdateUserSettingsUseCase(this.coreRepository);

  @override
  Future<Either<Failure, bool>> call(
      UpdateUserSettingsUseCaseParams params) async {
    return await coreRepository.updateUserSettings(params.settings);
  }
}

class UpdateUserSettingsUseCaseParams extends Equatable {
  final UserSettingsEntity settings;

  const UpdateUserSettingsUseCaseParams({
    required this.settings,
  });

  @override
  List<Object> get props => [settings];
}
