import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:go_router/go_router.dart';

import '../../expenses/view/view.dart';
import '../../income/view/view.dart';
import '../../transfer/view/view.dart';

class HomeSpeedDial extends StatelessWidget {
  const HomeSpeedDial({super.key});

  @override
  Widget build(BuildContext context) {
    return SpeedDial(
      children: [
        SpeedDialChild(
          child: const Icon(Icons.money_off),
          label: 'Expense',
          backgroundColor: Colors.red,
          shape: const CircleBorder(),
          onTap: () => context.push(ExpensesPage.route),
        ),
        SpeedDialChild(
          child: const Icon(Icons.attach_money),
          label: 'Income',
          backgroundColor: Colors.green,
          shape: const CircleBorder(),
          onTap: () => context.push(IncomePage.route),
        ),
        SpeedDialChild(
          child: const Icon(Icons.swap_horiz),
          label: 'Transfer',
          backgroundColor: Colors.orange,
          shape: const CircleBorder(),
          onTap: () => context.push(TransferPage.route),
        ),
      ],
      animatedIcon: AnimatedIcons.menu_close,
      backgroundColor: Colors.blue,
      overlayOpacity: 0.3,
    );
  }
}
