import 'package:flutter/material.dart';

import 'view.dart';

class IncomePage extends StatelessWidget {
  static const route = '/income';

  const IncomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            const IncomeAppBar(),
            SliverPadding(
              padding: EdgeInsets.only(
                top: 8,
                left: 16,
                right: 16,
              ),
              sliver: SliverToBoxAdapter(
                child: IncomeForm(),
              ),
            ),
          ],
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(16),
          child: IncomeBottomNavigation(),
        ),
      ),
    );
  }
}
