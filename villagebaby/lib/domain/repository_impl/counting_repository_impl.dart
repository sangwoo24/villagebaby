import 'package:villagebaby/data/provider/counting_provider.dart';
import 'package:villagebaby/domain/repository/counting_repository.dart';

class CountingRepositoryImpl extends CountingRepository {
  final CountingProvider _countingProvider = CountingProvider();

  @override
  Future<int> increaseCount({required int count}) {
    return _countingProvider.increaseCount(count: count);
  }

  @override
  Future<int> decreaseCount({required int count}) async {
    return _countingProvider.decreaseCount(count: count);
  }

  @override
  Future<int> resetCount({required int count}) {
    return _countingProvider.resetCount(count: count);
  }
}
