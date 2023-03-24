import 'core_state.dart';

abstract class CoreEvent {}

class InitCoreEvent extends CoreEvent {}

class UpdateCoreEvent extends CoreEvent {
  UpdateCoreEvent({required this.newCoreState});
  final CoreState newCoreState;
}

class UpdateUserSettingsEvent extends CoreEvent {
  UpdateUserSettingsEvent({
    this.language,
    this.theme,
  });
  String? language;
  String? theme;
}
