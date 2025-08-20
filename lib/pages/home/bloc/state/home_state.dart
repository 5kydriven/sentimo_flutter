import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sentimo_flutter/models/account/account.dart';

import '../../../../models/models.dart';

part 'home_state.freezed.dart';

enum HomeTab {
  dashboard,
  overview,
  profile,
  wallet,
  addTransaction,
}

@freezed
sealed class HomeState with _$HomeState {
  const factory HomeState({
    @Default(RequestStatus.waiting) RequestStatus requestStatus,
    @Default(HomeTab.dashboard) HomeTab currentTab,
    @Default([]) List<Account> accounts,
  }) = _HomeState;
}
