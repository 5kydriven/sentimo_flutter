import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class TransferBottomNavigation extends StatelessWidget {
  const TransferBottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: () => context.pop(),
      style: FilledButton.styleFrom(
        backgroundColor: Colors.orange,
      ),
      child: const Text(
        'Transfer money',
        style: TextStyle(
          fontSize: 16,
        ),
      ),
    );
  }
}
