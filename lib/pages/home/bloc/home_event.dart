sealed class HomeEvent {
  const HomeEvent();
}

class HomeBottomNavigationPressed extends HomeEvent {
  final int index;

  const HomeBottomNavigationPressed({
    required this.index,
  });
}
