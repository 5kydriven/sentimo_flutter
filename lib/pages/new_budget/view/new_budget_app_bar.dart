import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NewBudgetAppBar extends StatelessWidget implements PreferredSizeWidget {
  const NewBudgetAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: const Icon(Icons.close),
        onPressed: () => context.pop(),
      ),
      automaticallyImplyLeading: true,
      title: const Text('New Budget'),
      actions: [
        IconButton(
          icon: const Icon(Icons.check),
          onPressed: () => {},
        ),
      ],
    );
  }
}
