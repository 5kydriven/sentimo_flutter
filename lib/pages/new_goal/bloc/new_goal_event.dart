sealed class NewGoalEvent {
  const NewGoalEvent();
}

class NewGoalNameChanged extends NewGoalEvent {
  final String name;
  const NewGoalNameChanged({required this.name});
}

class NewGoalTargetAmountChanged extends NewGoalEvent {
  final String targetAmount;
  const NewGoalTargetAmountChanged({required this.targetAmount});
}

class NewGoalSavedAlreadyChanged extends NewGoalEvent {
  final String savedAlready;
  const NewGoalSavedAlreadyChanged({required this.savedAlready});
}

class NewGoalNoteChanged extends NewGoalEvent {
  final String note;
  const NewGoalNoteChanged({required this.note});
}
