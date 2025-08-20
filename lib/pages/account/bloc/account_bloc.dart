import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc.dart';

class AccountBloc extends Bloc<AccountEvent, AccountState> {
  AccountBloc() : super(const AccountState());
}
