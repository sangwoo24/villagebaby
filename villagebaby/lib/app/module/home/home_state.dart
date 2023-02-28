abstract class HomeState {
  final int count;

  HomeState({required this.count});
}

class InitialState extends HomeState {
  InitialState({required super.count});
}

class CountUpdateSuccess extends HomeState {
  CountUpdateSuccess({required super.count});
}

class CountUpdateFail extends HomeState {
  CountUpdateFail({required super.count});
}
