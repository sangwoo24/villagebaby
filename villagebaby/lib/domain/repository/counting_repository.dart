abstract class CountingRepository {
  Future<int> fetchCount();

  Future<int> increaseCount({required int count});

  Future<int> decreaseCount({required int count});

  Future<int> resetCount({required int count});
}
