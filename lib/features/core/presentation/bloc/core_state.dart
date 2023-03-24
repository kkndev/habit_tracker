import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entity/entity.dart';

part 'core_state.freezed.dart';

@freezed
class CoreState with _$CoreState {
  factory CoreState([
    String? id,
    @Default(initUserSettingsEntity) UserSettingsEntity settings,
  ]) = _CoreState;
}
