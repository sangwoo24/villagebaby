import 'package:villagebaby/data/provider/counting_provider.dart';
import 'package:villagebaby/domain/repository/counting_repository.dart';

class CountingRepositoryImpl extends CountingRepository {
  final CountingProvider _countingProvider = CountingProvider();

  @override
  Future<int> fetchCount() async {
    return await _countingProvider.fetchCount() ?? 0;
  }

  @override
  Future<int> increaseCount({required int count}) async {
    return await _countingProvider.increaseCount(count: count);
  }

  @override
  Future<int> decreaseCount({required int count}) async {
    return await _countingProvider.decreaseCount(count: count);
  }

  @override
  Future<int> resetCount({required int count}) async {
    return await _countingProvider.resetCount(count: count);
  }
}
