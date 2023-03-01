import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:villagebaby/app/module/home/home_state.dart';
import 'package:villagebaby/domain/repository/counting_repository.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit({required CountingRepository countingRepository})
      : _countingRepository = countingRepository,
        super(InitialState());

  final CountingRepository _countingRepository;

  fetchCount() async {
    final count = await _countingRepository.fetchCount();

    emit(CountLoaded(count: count));
  }

  increaseCount() async {
    final currentState = state as CountLoaded;

    if (currentState is CountUpdateInLoading) return;

    emit(CountUpdateInLoading(count: currentState.count));

    try {
      final newCount =
          await _countingRepository.increaseCount(count: currentState.count);

      emit(CountUpdateSuccess(count: newCount));
    } catch (e) {
      emit(CountUpdateFail(count: currentState.count));
    }
  }

  decreaseCount() async {
    final currentState = state as CountLoaded;

    if (currentState is CountUpdateInLoading) return;

    emit(CountUpdateInLoading(count: currentState.count));

    try {
      final newCount =
          await _countingRepository.decreaseCount(count: currentState.count);

      emit(CountUpdateSuccess(count: newCount));
    } catch (e) {
      emit(CountUpdateFail(count: currentState.count));
    }
  }

  resetCount() async {
    final currentState = state as CountLoaded;

    if (currentState is CountUpdateInLoading) return;

    emit(CountUpdateInLoading(count: currentState.count));

    try {
      final newCount =
          await _countingRepository.resetCount(count: currentState.count);

      emit(CountUpdateSuccess(count: newCount));
    } catch (e) {
      emit(CountUpdateFail(count: currentState.count));
    }
  }
}
