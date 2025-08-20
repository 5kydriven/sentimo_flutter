import 'package:flutter/material.dart';
import 'package:sentimo_flutter/pages/dashboard/view/dashboard_app_bar.dart';

class DashboardPage extends StatelessWidget {
  static const route = '/dashboard';
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        top: false,
        child: CustomScrollView(
          slivers: [
            DashboardAppBar(),
          ],
        ),
      ),
    );
  }
}
