import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc.dart';

class NewBudgetBloc extends Bloc<NewBudgetEvent, NewBudgetState> {
  NewBudgetBloc() : super(const NewBudgetState());
}
