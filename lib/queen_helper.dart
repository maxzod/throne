abstract class QueenHelper<T> {
  static dynamic val;
  QueenHelper();
  Future<T> boot();

  Future createHelper() async {
    final bootResult = await boot();
    if (bootResult == null) {
      throw Exception('[throne] [queen_helper] boot can not return null');
    }
  }

  T summon() => val;
}
