import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../models/models.dart';
import 'bloc.dart';

class NewAccountBloc extends Bloc<NewAccountEvent, NewAccountState> {
  NewAccountBloc() : super(const NewAccountState()) {
    on<NewAccountAccountNameChanged>(_accountNameChanged);
    on<NewAccountBankAccountNumberChanged>(_bankAccountNumberChanged);
    on<NewAccountInitialValueChanged>(_initialValueChanged);
  }

  void _accountNameChanged(
    NewAccountAccountNameChanged event,
    Emitter<NewAccountState> emit,
  ) {
    var errorType = ErrorType.empty;
    if (event.accountName.isEmpty) {
      errorType = ErrorType.empty;
    } else {
      errorType = ErrorType.none;
    }

    emit(
      state.copyWith.accountName(
        value: event.accountName,
        errorType: errorType,
      ),
    );
  }

  void _bankAccountNumberChanged(
    NewAccountBankAccountNumberChanged event,
    Emitter<NewAccountState> emit,
  ) {
    var errorType = ErrorType.empty;
    if (event.bankAccountNumber.isEmpty) {
      errorType = ErrorType.empty;
    } else {
      errorType = ErrorType.none;
    }

    emit(
      state.copyWith.bankAccountNumber(
        value: event.bankAccountNumber,
        errorType: errorType,
      ),
    );
  }

  void _initialValueChanged(
    NewAccountInitialValueChanged event,
    Emitter<NewAccountState> emit,
  ) {
    var errorType = ErrorType.empty;
    if (event.initialValue.isEmpty) {
      errorType = ErrorType.empty;
    } else {
      errorType = ErrorType.none;
    }

    emit(
      state.copyWith.initialValue(
        value: event.initialValue,
        errorType: errorType,
      ),
    );
  }
}
