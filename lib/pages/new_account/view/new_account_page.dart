import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sentimo_flutter/pages/new_account/view/view.dart';

import '../bloc/bloc.dart';

class NewAccountPage extends StatelessWidget {
  static const route = '/new-account';

  const NewAccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NewAccountBloc(),
      child: SafeArea(
        top: false,
        child: Scaffold(
          appBar: const NewAccountAppBar(),
          body: const NewAccountForm(),
        ),
      ),
    );
  }
}
