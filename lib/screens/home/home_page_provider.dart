import 'package:flutter/cupertino.dart';
import 'package:imdp_api_app/controller/api_services.dart';
import 'package:imdp_api_app/models/by_name_model.dart';
import 'package:imdp_api_app/product/service/project_dio.dart';

class HomePageProvider extends ChangeNotifier with ProjectDioMixin {
  final IBookService bookService;
  bool isLoading = false;
  List<Result>? data = [];

  void _changeLoading() {
    isLoading = !isLoading;
    notifyListeners();
  }

  HomePageProvider(this.bookService) {
    _fetchByName();
  }

  Future<void> _fetchByName() async {
    _changeLoading();
    data = (await bookService.searchByName("Inception"))?.result ?? [];
    _changeLoading();
  }
}
