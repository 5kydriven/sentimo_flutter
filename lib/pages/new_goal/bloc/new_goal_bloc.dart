import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../models/models.dart';
import 'bloc.dart';

class NewGoalBloc extends Bloc<NewGoalEvent, NewGoalState> {
  NewGoalBloc() : super(const NewGoalState()) {
    on<NewGoalNameChanged>(_nameChanged);
    on<NewGoalTargetAmountChanged>(_targetAmountChanged);
    on<NewGoalSavedAlreadyChanged>(_savedAlreadyChanged);
    on<NewGoalNoteChanged>(_noteChanged);
  }

  void _nameChanged(
    NewGoalNameChanged event,
    Emitter<NewGoalState> emit,
  ) {
    var errorType = ErrorType.empty;
    if (event.name.isEmpty) {
      errorType = ErrorType.empty;
    } else {
      errorType = ErrorType.none;
    }

    emit(
      state.copyWith.name(
        value: event.name,
        errorType: errorType,
      ),
    );
  }

  void _targetAmountChanged(
    NewGoalTargetAmountChanged event,
    Emitter<NewGoalState> emit,
  ) {
    var errorType = ErrorType.empty;
    if (event.targetAmount.isEmpty) {
      errorType = ErrorType.empty;
    } else {
      errorType = ErrorType.none;
    }

    emit(
      state.copyWith.targetAmount(
        value: event.targetAmount,
        errorType: errorType,
      ),
    );
  }

  void _savedAlreadyChanged(
    NewGoalSavedAlreadyChanged event,
    Emitter<NewGoalState> emit,
  ) {
    var errorType = ErrorType.empty;
    if (event.savedAlready.isEmpty) {
      errorType = ErrorType.empty;
    } else {
      errorType = ErrorType.none;
    }

    emit(
      state.copyWith.savedAlready(
        value: event.savedAlready,
        errorType: errorType,
      ),
    );
  }

  void _noteChanged(
    NewGoalNoteChanged event,
    Emitter<NewGoalState> emit,
  ) {
    var errorType = ErrorType.empty;
    if (event.note.isEmpty) {
      errorType = ErrorType.empty;
    } else {
      errorType = ErrorType.none;
    }

    emit(
      state.copyWith.note(
        value: event.note,
        errorType: errorType,
      ),
    );
  }
}
