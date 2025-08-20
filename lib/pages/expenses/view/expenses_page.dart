import 'package:flutter/material.dart';

import 'view.dart';

class ExpensesPage extends StatelessWidget {
  static const route = '/expenses';

  const ExpensesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            const ExpensesAppBar(),
            SliverPadding(
              padding: EdgeInsets.only(
                top: 8,
                left: 16,
                right: 16,
              ),
              sliver: SliverToBoxAdapter(
                child: ExpensesForm(),
              ),
            ),
          ],
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(16),
          child: ExpensesBottomNavigation(),
        ),
      ),
    );
  }
}
