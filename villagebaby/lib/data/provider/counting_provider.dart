class CountingProvider {
  Future<int> increaseCount({required int count}) async {
    await Future.delayed(const Duration(seconds: 1));

    return count + 1;
  }

  Future<int> decreaseCount({required int count}) async {
    await Future.delayed(const Duration(seconds: 1));

    return count - 1;
  }

  Future<int> resetCount({required int count}) async {
    await Future.delayed(const Duration(seconds: 1));

    return 0;
  }
}
