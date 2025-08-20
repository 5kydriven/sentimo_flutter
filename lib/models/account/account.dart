import 'package:freezed_annotation/freezed_annotation.dart';

part 'account.freezed.dart';

enum AccountType {
  general,
  cash,
  currentAccount,
  creditCard,
  savingsAccount,
  bonus,
  insurance,
  investment,
  loan,
  mortage,
  accountWithOverdraft,
}

@freezed
sealed class Account with _$Account {
  const factory Account({
    String? name,
    String? balance,
    AccountType? type,
    @Default(false) bool isSelected,
  }) = _Account;
}
