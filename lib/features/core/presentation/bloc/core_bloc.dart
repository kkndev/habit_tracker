import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/usecases/usecases.dart';
import 'core_event.dart';
import 'core_state.dart';

class CoreBloc extends Bloc<CoreEvent, CoreState> {
  final InitAppUseCase initAppUseCase;
  final UpdateUserSettingsUseCase updateUserSettingsUseCase;

  CoreBloc({
    required this.initAppUseCase,
    required this.updateUserSettingsUseCase,
  }) : super(CoreState()) {
    on<InitCoreEvent>((event, emit) {
      initAppUseCase(NoParams());
    });
    on<UpdateCoreEvent>((event, emit) {
      emit(event.newCoreState);
    });
    on<UpdateUserSettingsEvent>((event, emit) {
      var newSettings = state.settings.copyWith(
        language: event.language ?? state.settings.language,
        theme: event.theme ?? state.settings.theme,
      );
      updateUserSettingsUseCase(
        UpdateUserSettingsUseCaseParams(
          settings: newSettings,
        ),
      );
      emit(
        state.copyWith(settings: newSettings),
      );
    });
  }
}
