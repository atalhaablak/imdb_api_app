import 'package:flutter/cupertino.dart';

class SearchPageViewModel extends ChangeNotifier {
  TextEditingController searchController = TextEditingController();
  dynamic historySearchList = [];
}
