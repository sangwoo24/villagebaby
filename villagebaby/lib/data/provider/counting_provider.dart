import 'package:hive/hive.dart';

class CountingProvider {
  Future<int?> fetchCount() async {
    final box = await Hive.openBox('countBox');

    return box.get('count') as int?;
  }

  Future<int> increaseCount({required int count}) async {
    await Future.delayed(const Duration(seconds: 1));

    final box = await Hive.openBox('countBox');
    box.put('count', count + 1);

    return count + 1;
  }

  Future<int> decreaseCount({required int count}) async {
    await Future.delayed(const Duration(seconds: 1));

    final box = await Hive.openBox('countBox');
    box.put('count', count - 1);

    return count - 1;
  }

  Future<int> resetCount({required int count}) async {
    await Future.delayed(const Duration(seconds: 1));

    final box = await Hive.openBox('countBox');
    box.put('count', 0);

    return 0;
  }
}
