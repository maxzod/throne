import 'package:throne/queen_helper.dart';
import 'package:throne/loyal_helpers/share_prefrancess.dart';

class QueenShip {
  static Future sail({
    List<QueenHelper> helpers,
  }) async {
    List<QueenHelper> helpersList = [QueenPrefs()];
    if (helpers != null) {
      helpersList.addAll(helpers);
    }
    for (int i = 0; i < helpersList.length; i++) {
      await helpersList[i].createHelper();
    }
  }
}
