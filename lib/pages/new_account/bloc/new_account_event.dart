sealed class NewAccountEvent {
  const NewAccountEvent();
}

class NewAccountAccountNameChanged extends NewAccountEvent {
  final String accountName;
  const NewAccountAccountNameChanged({required this.accountName});
}

class NewAccountBankAccountNumberChanged extends NewAccountEvent {
  final String bankAccountNumber;
  const NewAccountBankAccountNumberChanged({required this.bankAccountNumber});
}

class NewAccountInitialValueChanged extends NewAccountEvent {
  final String initialValue;
  const NewAccountInitialValueChanged({required this.initialValue});
}

class NewAccountCheckButtonPressed extends NewAccountEvent {
  const NewAccountCheckButtonPressed();
}
