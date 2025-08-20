import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NewGoalAppBar extends StatelessWidget implements PreferredSizeWidget {
  const NewGoalAppBar({super.key});

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
      title: const Text('New Goal'),
      actions: [
        IconButton(
          icon: const Icon(Icons.check),
          onPressed: () => {},
        ),
      ],
    );
  }
}
