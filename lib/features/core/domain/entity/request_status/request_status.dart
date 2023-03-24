import 'package:freezed_annotation/freezed_annotation.dart';

part 'request_status.freezed.dart';

@freezed
class RequestStatus with _$RequestStatus {
  const factory RequestStatus.init() = _LoadInit;
  const factory RequestStatus.loading() = _LoadInProgress;
  const factory RequestStatus.success() = _LoadSuccess;
  const factory RequestStatus.failure() = _LoadFailure;
}
