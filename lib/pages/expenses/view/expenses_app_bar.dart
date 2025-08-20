import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ExpensesAppBar extends StatelessWidget {
  const ExpensesAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      title: const Text('Expenses'),
      centerTitle: true,
      automaticallyImplyLeading: true,
      leading: IconButton(
        icon: const Icon(Icons.arrow_back_ios),
        onPressed: () => context.pop(),
      ),
    );
  }
}
