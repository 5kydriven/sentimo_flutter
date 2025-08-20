import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../models/models.dart';

part 'expenses_state.freezed.dart';

@freezed
sealed class ExpensesState with _$ExpensesState {
  const factory ExpensesState({
    @Default(TextFieldInput()) TextFieldInput amount,
    @Default(TextFieldInput()) TextFieldInput description,
    @Default(TextFieldInput()) TextFieldInput category,
    @Default(TextFieldInput()) TextFieldInput date,
    @Default(RequestStatus.waiting) RequestStatus expenseStatus,
    ValueChanged<ExpensesState>? expenseAdded,
  }) = _ExpensesState;
}
