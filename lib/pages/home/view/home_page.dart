import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sentimo_flutter/pages/account/view/account_page.dart';
import 'package:sentimo_flutter/pages/budget_goal/view/budget_goal_page.dart';
import 'package:sentimo_flutter/pages/home/view/view.dart';

import '../bloc/bloc.dart';

class HomePage extends StatefulWidget {
  static const route = '/home';

  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  late final TabController _tabController;
  late final PageController _pageController;
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    _pageController = PageController();

    _tabController.addListener(() {
      if (_tabController.indexIsChanging) {
        _pageController.jumpToPage(_tabController.index);
      }
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<HomeBloc>(
      create: (context) => HomeBloc(),
      child: SafeArea(
        top: false,
        child: Scaffold(
          body: NestedScrollView(
            headerSliverBuilder: (context, innerBoxIsScrolled) => [
              const HomeAppBar(),
              HomeTabBar(
                tabController: _tabController,
              ),
            ],
            body: PageView(
              controller: _pageController,
              onPageChanged: (index) {
                setState(() {
                  _currentIndex = index;
                });
                _tabController.animateTo(index);
              },
              children: const [
                AccountPage(),
                BudgetGoalPage(),
              ],
            ),
          ),
          floatingActionButton: _currentIndex == 0 ? const HomeSpeedDial() : null,
          drawer: const HomeDrawer(),
        ),
      ),
    );
  }
}
