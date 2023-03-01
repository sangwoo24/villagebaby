abstract class HomeState {}

class InitialState extends HomeState {}

class CountLoaded extends HomeState {
  final int count;

  CountLoaded({required this.count});
}

class CountUpdateInLoading extends CountLoaded {
  CountUpdateInLoading({required super.count});
}

class CountUpdateSuccess extends CountLoaded {
  CountUpdateSuccess({required super.count});
}

class CountUpdateFail extends CountLoaded {
  CountUpdateFail({required super.count});
}
