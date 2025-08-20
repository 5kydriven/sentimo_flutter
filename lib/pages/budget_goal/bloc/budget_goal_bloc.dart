import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc.dart';

class BudgetGoalBloc extends Bloc<BudgetGoalEvent, BudgetGoalState> {
  BudgetGoalBloc() : super(const BudgetGoalState());
}
