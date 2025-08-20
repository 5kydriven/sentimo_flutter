import 'package:flutter/material.dart';

import 'profile_app_bar.dart';

class ProfilePage extends StatelessWidget {
  static const route = '/profile';

  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            ProfileAppBar(),
          ],
        ),
      ),
    );
  }
}
