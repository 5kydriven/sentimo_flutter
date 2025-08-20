import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:go_router/go_router.dart';

class ExpensesBottomNavigation extends StatelessWidget {
  const ExpensesBottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    // return FilledButton(
    //   onPressed: () => context.pop(),
    //   style: FilledButton.styleFrom(
    //     backgroundColor: Colors.red,
    //   ),
    //   child: const Text(
    //     'Add Expenses',
    //     style: TextStyle(
    //       fontSize: 16,
    //     ),
    //   ),
    // );
    return GFButton(
      onPressed: () => context.pop(),
      color: Colors.red,
      shape: GFButtonShape.pills,
      text: 'Add Expenses',
    );
  }
}
