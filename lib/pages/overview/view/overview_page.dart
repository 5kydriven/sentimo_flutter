import 'package:flutter/material.dart';

import 'overview_app_bar.dart';

class OverviewPage extends StatelessWidget {
  static const route = '/overview';

  const OverviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            OverviewAppBar(),
          ],
        ),
      ),
    );
  }
}
