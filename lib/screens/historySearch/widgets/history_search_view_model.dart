// ignore_for_file: prefer_interpolation_to_compose_strings

import 'package:flutter/foundation.dart';
import 'package:hive/hive.dart';
import 'package:imdp_api_app/main.dart';

class HistorySearchViewModel extends ChangeNotifier {
  var box = Hive.box(HistorySearchBox);
  List<String> historySearchList = [];

  List<String> writeHive(String name) {
    box.add(name);
    historySearchList.add(box.get("kelime"));
    if (kDebugMode) {
      print("aranan kelime: " + box.get("kelime"));
    }
    return historySearchList;
    // historySearchList.add(box.get("kelime"));
  }
}
