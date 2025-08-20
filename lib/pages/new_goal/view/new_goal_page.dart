import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/bloc.dart';
import 'view.dart';

class NewGoalPage extends StatelessWidget {
  static const route = '/new-goal';

  const NewGoalPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NewGoalBloc(),
      child: SafeArea(
        top: false,
        child: Scaffold(
          appBar: const NewGoalAppBar(),
          body: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 16,
              horizontal: 20,
            ),
            child: const NewGoalForm(),
          ),
        ),
      ),
    );
  }
}
