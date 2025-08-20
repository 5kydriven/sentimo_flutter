import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class IncomeBottomNavigation extends StatelessWidget {
  const IncomeBottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: () => context.pop(),
      style: FilledButton.styleFrom(
        backgroundColor: Colors.green,
      ),
      child: const Text(
        'Add Income',
        style: TextStyle(
          fontSize: 16,
        ),
      ),
    );
  }
}
