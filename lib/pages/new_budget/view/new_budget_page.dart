import 'package:flutter/material.dart';
import 'package:sentimo_flutter/pages/new_budget/new_budget.dart';

class NewBudgetPage extends StatelessWidget {
  static const route = '/new-budget';
  const NewBudgetPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      top: false,
      child: Scaffold(
        appBar: NewBudgetAppBar(),
        body: Center(
          child: Text('New Budget Page'),
        ),
      ),
    );
  }
}
