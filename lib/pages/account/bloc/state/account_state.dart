import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../models/models.dart';

part 'account_state.freezed.dart';

@freezed
sealed class AccountState with _$AccountState {
  const factory AccountState({
    @Default(RequestStatus.waiting) RequestStatus requestStatus,
  }) = _AccountState;
}
