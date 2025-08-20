import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/bloc.dart';

class HomeButtonNavigation extends StatelessWidget {
  const HomeButtonNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<HomeBloc>();

    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return BottomNavigationBar(
          backgroundColor: Colors.white,
          elevation: 1,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.black,
          type: BottomNavigationBarType.fixed,
          currentIndex: state.currentTab.index,
          onTap: (index) {
            if (index == 2) {
              showBottomSheet(
                context: context,
                builder: (context) {
                  return Wrap(
                    children: [Text('test')],
                  );
                },
              );
            }
            bloc.add(
              HomeBottomNavigationPressed(
                index: index,
              ),
            );
          },
          items: [
            const BottomNavigationBarItem(
              icon: Icon(
                Icons.home_outlined,
                size: 24,
                color: Colors.black,
              ),
              activeIcon: Icon(
                Icons.home,
                size: 24,
                color: Colors.black,
              ),
              label: 'Home',
            ),
            const BottomNavigationBarItem(
              icon: Icon(
                Icons.account_balance_wallet_outlined,
                size: 24,
                color: Colors.black,
              ),
              activeIcon: Icon(
                Icons.account_balance_wallet,
                size: 24,
                color: Colors.black,
              ),
              label: 'Wallet',
            ),
            BottomNavigationBarItem(
              icon: Container(
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.black,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 6,
                      offset: Offset(0, 4),
                    ),
                  ],
                ),
                padding: EdgeInsets.all(8),
                child: Icon(
                  Icons.add,
                  color: Colors.white,
                  size: 32,
                ),
              ),
              label: '',
            ),
            const BottomNavigationBarItem(
              icon: Icon(
                Icons.analytics_outlined,
                size: 24,
                color: Colors.black,
              ),
              activeIcon: Icon(
                Icons.analytics,
                size: 24,
                color: Colors.black,
              ),
              label: 'Overview',
            ),
            const BottomNavigationBarItem(
              icon: Icon(
                Icons.person_outline,
                size: 24,
                color: Colors.black,
              ),
              activeIcon: Icon(
                Icons.person,
                size: 24,
                color: Colors.black,
              ),
              label: 'Profile',
            ),
          ],
        );
      },
    );
  }
}
