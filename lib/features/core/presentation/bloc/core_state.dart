import 'package:freezed_annotation/freezed_annotation.dart';

part 'core_state.freezed.dart';

@freezed
class CoreState with _$CoreState {
  factory CoreState([
    String? id,
  ]) = _CoreState;
}
