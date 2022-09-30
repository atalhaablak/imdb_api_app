// ignore_for_file: prefer_interpolation_to_compose_strings

import 'package:flutter/foundation.dart';
import 'package:hive/hive.dart';
import 'package:imdp_api_app/main.dart';

class HistorySearchViewModel extends ChangeNotifier {
  var box = Hive.box(HistorySearchBox);
  List<String> historySearchList = [];

  List<dynamic> get readBox {
    List<dynamic> readBox = (box.values.map((e) => e)).toList();
    readBox = readBox.reversed.toList();
    readBox = readBox.toSet().toList();
    return readBox;
  }

  void writeHive(String name) {
    box.add(name);
  }
}
