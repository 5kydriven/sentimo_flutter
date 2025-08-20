import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sentimo_flutter/pages/home/bloc/bloc.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(const HomeState()) {
    on<HomeBottomNavigationPressed>(_bottomNavigationPressed);
  }

  void _bottomNavigationPressed(
    HomeBottomNavigationPressed event,
    Emitter<HomeState> emit,
  ) {
    emit(
      state.copyWith(
        currentTab: HomeTab.values[event.index],
      ),
    );
  }
}
