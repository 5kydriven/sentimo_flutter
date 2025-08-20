import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../models/models.dart';

part 'new_goal_state.freezed.dart';

@freezed
sealed class NewGoalState with _$NewGoalState {
  const factory NewGoalState({
    @Default(TextFieldInput()) TextFieldInput name,
    @Default(
      TextFieldInput(
        value: '0',
      ),
    )
    TextFieldInput targetAmount,
    @Default(
      TextFieldInput(
        value: '0',
      ),
    )
    TextFieldInput savedAlready,
    @Default(TextFieldInput()) TextFieldInput note,
    @Default(RequestStatus.waiting) RequestStatus requestStatus,
  }) = _NewGoalState;
}
