import '../models/account/account.dart';

extension AccountTypeLabel on AccountType {
  String get label {
    switch (this) {
      case AccountType.general:
        return 'General';
      case AccountType.cash:
        return 'Cash';
      case AccountType.currentAccount:
        return 'Current Account';
      case AccountType.creditCard:
        return 'Credit Card';
      case AccountType.savingsAccount:
        return 'Savings Account';
      case AccountType.bonus:
        return 'Bonus';
      case AccountType.insurance:
        return 'Insurance';
      case AccountType.investment:
        return 'Investment';
      case AccountType.loan:
        return 'Loan';
      case AccountType.mortage:
        return 'Mortage';
      case AccountType.accountWithOverdraft:
        return 'Account with Overdraft';
    }
  }
}
