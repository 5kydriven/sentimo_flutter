import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class IncomeAppBar extends StatelessWidget {
  const IncomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      title: const Text('Income'),
      centerTitle: true,
      automaticallyImplyLeading: true,
      leading: IconButton(
        onPressed: () => context.pop(),
        icon: const Icon(Icons.arrow_back_ios),
      ),
    );
  }
}
