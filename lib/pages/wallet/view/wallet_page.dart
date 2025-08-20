import 'package:flutter/material.dart';

import 'wallet_app_bar.dart';

class WalletPage extends StatelessWidget {
  static const route = '/wallet';

  const WalletPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            WalletAppBar(),
          ],
        ),
      ),
    );
  }
}
