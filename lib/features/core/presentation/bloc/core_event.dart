import 'core_state.dart';

abstract class CoreEvent {}

class InitCoreEvent extends CoreEvent {}

class UpdateCoreEvent extends CoreEvent {
  UpdateCoreEvent({required this.newCoreState});
  final CoreState newCoreState;
}
