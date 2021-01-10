import 'package:shared_preferences/shared_preferences.dart';
import 'package:throne/queen_helper.dart';

class QueenPrefs extends QueenHelper<SharedPreferences> {
  @override
  Future<SharedPreferences> boot() async {
    return SharedPreferences.getInstance();
  }
}
