import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/usecases/usecases.dart';
import 'core_event.dart';
import 'core_state.dart';

class CoreBloc extends Bloc<CoreEvent, CoreState> {
  final InitAppUseCase initAppUseCase;
  final UpdateUserSettingsUseCase updateUserSettingsUseCase;
  final LoadUserSettingsUseCase loadUserSettingsUseCase;

  CoreBloc({
    required this.initAppUseCase,
    required this.updateUserSettingsUseCase,
    required this.loadUserSettingsUseCase,
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
        state.copyWith(
          settings: newSettings,
          error: 'error',
        ),
      );
    });
    on<LoadUserSettingsEvent>((event, emit) async {
      var result = await loadUserSettingsUseCase(NoParams());
      result.fold(
        (error) => emit(
          state.copyWith(),
        ),
        (newSettings) => emit(
          state.copyWith(
            settings: newSettings,
          ),
        ),
      );
    });
  }
}
