sealed class ExpensesEvent {
  const ExpensesEvent();
}

sealed class ExpensesAmountChanged extends ExpensesEvent {
  final String amount;

  const ExpensesAmountChanged({required this.amount});
}

sealed class ExpensesDescriptionChanged extends ExpensesEvent {
  final String description;

  const ExpensesDescriptionChanged({required this.description});
}

sealed class ExpensesCategoryChanged extends ExpensesEvent {
  final String category;

  const ExpensesCategoryChanged({required this.category});
}

sealed class ExpensesDateChanged extends ExpensesEvent {
  final DateTime date;

  const ExpensesDateChanged({required this.date});
}

sealed class ExpensesButtonPressed extends ExpensesEvent {
  const ExpensesButtonPressed();
}
