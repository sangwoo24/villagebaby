abstract class CountingRepository {
  Future<int> increaseCount({required int count});

  Future<int> decreaseCount({required int count});
}
