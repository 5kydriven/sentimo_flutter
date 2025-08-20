import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sentimo_flutter/models/account/account.dart';
import 'package:sentimo_flutter/models/text_field_input/text_field_input.dart';

part 'new_account_state.freezed.dart';

@freezed
sealed class NewAccountState with _$NewAccountState {
  const factory NewAccountState({
    @Default(TextFieldInput()) TextFieldInput accountName,
    @Default(TextFieldInput()) TextFieldInput bankAccountNumber,
    @Default(TextFieldInput(value: '0')) TextFieldInput initialValue,
    @Default(AccountType.general) AccountType type,
  }) = _NewAccountState;
}
