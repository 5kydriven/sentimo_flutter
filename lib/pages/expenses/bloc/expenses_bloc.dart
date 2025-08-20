import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../models/models.dart';
import 'bloc.dart';

class ExpensesBloc extends Bloc<ExpensesEvent, ExpensesState> {
  ExpensesBloc({required ExpensesState iniatialState}) : super(iniatialState) {
    on<ExpensesAmountChanged>(_amountChanged);
    on<ExpensesDescriptionChanged>(_descriptionChanged);
    on<ExpensesCategoryChanged>(_categoryChanged);
    on<ExpensesDateChanged>(_dateChanged);
    on<ExpensesButtonPressed>(_buttonPressed);
  }

  void _amountChanged(ExpensesAmountChanged event, Emitter<ExpensesState> emit) {
    emit(
      state.copyWith(
        amount: TextFieldInput(
          value: event.amount,
          errorType: ErrorType.none,
        ),
      ),
    );
  }

  void _descriptionChanged(ExpensesDescriptionChanged event, Emitter<ExpensesState> emit) {
    emit(
      state.copyWith(
        description: TextFieldInput(
          value: event.description,
          errorType: ErrorType.none,
        ),
      ),
    );
  }

  void _categoryChanged(ExpensesCategoryChanged event, Emitter<ExpensesState> emit) {
    emit(
      state.copyWith(
        category: TextFieldInput(
          value: event.category,
          errorType: ErrorType.none,
        ),
      ),
    );
  }

  void _dateChanged(ExpensesDateChanged event, Emitter<ExpensesState> emit) {
    emit(
      state.copyWith(
        date: TextFieldInput(
          value: event.date.toString(),
          errorType: ErrorType.none,
        ),
      ),
    );
  }

  void _buttonPressed(ExpensesButtonPressed event, Emitter<ExpensesState> emit) {
    emit(
      state.copyWith(
        expenseStatus: RequestStatus.inProgress,
      ),
    );
  }
}
