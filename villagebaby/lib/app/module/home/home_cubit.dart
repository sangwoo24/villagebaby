import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:villagebaby/app/module/home/home_state.dart';
import 'package:villagebaby/domain/repository/counting_repository.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit({required CountingRepository countingRepository})
      : _countingRepository = countingRepository,
        super(InitialState(count: 0));

  final CountingRepository _countingRepository;

  increaseCount() async {
    if (state is CountUpdateInLoading) return;

    emit(CountUpdateInLoading(count: state.count));

    try {
      final newCount =
          await _countingRepository.increaseCount(count: state.count);

      emit(CountUpdateSuccess(count: newCount));
    } catch (e) {
      emit(CountUpdateFail(count: state.count));
    }
  }

  decreaseCount() async {
    if (state is CountUpdateInLoading) return;

    emit(CountUpdateInLoading(count: state.count));

    try {
      final newCount =
          await _countingRepository.decreaseCount(count: state.count);

      emit(CountUpdateSuccess(count: newCount));
    } catch (e) {
      emit(CountUpdateFail(count: state.count));
    }
  }

  resetCount() async {
    if (state is CountUpdateInLoading) return;

    emit(CountUpdateInLoading(count: state.count));

    try {
      final newCount = await _countingRepository.resetCount(count: state.count);

      emit(CountUpdateSuccess(count: newCount));
    } catch (e) {
      emit(CountUpdateFail(count: state.count));
    }
  }
}
