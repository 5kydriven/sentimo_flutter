import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sentimo_flutter/pages/dashboard/view/dashboard_page.dart';
import 'package:sentimo_flutter/pages/expenses/view/view.dart';
import 'package:sentimo_flutter/pages/home/view/view.dart';
import 'package:sentimo_flutter/pages/income/view/income_page.dart';
import 'package:sentimo_flutter/pages/new_account/view/new_account_page.dart';
import 'package:sentimo_flutter/pages/new_budget/view/new_budget_page.dart';
import 'package:sentimo_flutter/pages/new_goal/view/view.dart';
import 'package:sentimo_flutter/pages/overview/view/overview_page.dart';
import 'package:sentimo_flutter/pages/profile/view/profile_page.dart';
import 'package:sentimo_flutter/pages/transfer/view/transfer_page.dart';
import 'package:sentimo_flutter/pages/wallet/view/wallet_page.dart';

void main() {
  runApp(Sentimo());
}

class Sentimo extends StatefulWidget {
  const Sentimo({
    super.key,
  });

  @override
  State<Sentimo> createState() => _SentimoState();
}

class _SentimoState extends State<Sentimo> {
  final _materialKey = GlobalKey();
  late final GoRouter router;

  @override
  void initState() {
    super.initState();

    router = GoRouter(
      initialLocation: HomePage.route,
      routes: <RouteBase>[
        GoRoute(
          path: HomePage.route,
          builder: (context, state) {
            return const HomePage();
          },
        ),
        GoRoute(
          path: DashboardPage.route,
          builder: (context, state) {
            return const DashboardPage();
          },
        ),
        GoRoute(
          path: WalletPage.route,
          builder: (context, state) {
            return const WalletPage();
          },
        ),
        GoRoute(
          path: OverviewPage.route,
          builder: (context, state) {
            return const OverviewPage();
          },
        ),
        GoRoute(
          path: ProfilePage.route,
          builder: (context, state) {
            return const ProfilePage();
          },
        ),
        GoRoute(
          path: IncomePage.route,
          builder: (context, state) {
            return const IncomePage();
          },
        ),
        GoRoute(
          path: ExpensesPage.route,
          builder: (context, state) {
            return const ExpensesPage();
          },
        ),
        GoRoute(
          path: TransferPage.route,
          builder: (context, state) {
            return const TransferPage();
          },
        ),
        GoRoute(
          path: NewAccountPage.route,
          builder: (context, state) {
            return const NewAccountPage();
          },
        ),
        GoRoute(
          path: NewBudgetPage.route,
          builder: (context, state) {
            return const NewBudgetPage();
          },
        ),
        GoRoute(
          path: NewGoalPage.route,
          builder: (context, state) {
            return const NewGoalPage();
          },
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      key: _materialKey,
      debugShowCheckedModeBanner: false,
      routerConfig: router,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF5FBCD4),
        ),
      ),
    );
  }
}
