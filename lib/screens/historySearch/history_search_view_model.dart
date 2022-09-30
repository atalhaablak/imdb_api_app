// ignore_for_file: prefer_interpolation_to_compose_strings

import 'package:flutter/foundation.dart';
import 'package:hive/hive.dart';
import 'package:imdp_api_app/main.dart';

import 'model/history_search_model.dart';

class HistorySearchViewModel extends ChangeNotifier {
  var box = Hive.box(HistorySearchBox);
  List<String> historySearchList = [];

  List<HistorySearchModel> get readBox {
    final list = box.values.map<HistorySearchModel>((e) => e);
    return list.toList();
  }

  void writeHive(HistorySearchModel model) {
    box.add(model);
  }
}
