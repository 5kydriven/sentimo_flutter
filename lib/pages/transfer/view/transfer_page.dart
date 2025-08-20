import 'package:flutter/material.dart';

import 'view.dart';

class TransferPage extends StatelessWidget {
  static const route = '/transfer';

  const TransferPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            const TransferAppBar(),
            SliverPadding(
              padding: EdgeInsets.only(
                top: 8,
                left: 16,
                right: 16,
              ),
              sliver: SliverToBoxAdapter(
                child: TransferForm(),
              ),
            ),
          ],
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(16),
          child: TransferBottomNavigation(),
        ),
      ),
    );
  }
}
