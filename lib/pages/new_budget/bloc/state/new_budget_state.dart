import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../models/models.dart';

part 'new_budget_state.freezed.dart';

@freezed
sealed class NewBudgetState with _$NewBudgetState {
  const factory NewBudgetState({
    @Default(RequestStatus.waiting) RequestStatus requestStatus,
  }) = _NewBudgetState;
}
