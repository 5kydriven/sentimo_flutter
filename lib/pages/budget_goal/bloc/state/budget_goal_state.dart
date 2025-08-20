import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../models/models.dart';

part 'budget_goal_state.freezed.dart';

@freezed
sealed class BudgetGoalState with _$BudgetGoalState {
  const factory BudgetGoalState({
    @Default(RequestStatus.waiting) RequestStatus requestStatus,
  }) = _BudgetGoalState;
}
