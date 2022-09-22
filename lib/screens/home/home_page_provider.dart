import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:imdp_api_app/controller/api_services.dart';
import 'package:imdp_api_app/models/by_name_model.dart';
import 'package:imdp_api_app/product/service/project_dio.dart';

class HomePageViewModel extends ChangeNotifier with ProjectDioMixin {
  final IBookService bookService;
  bool isLoading = false;
  bool isError = false;
  String errorMessage = "";
  List<Result>? data = [];

  void _changeLoading() {
    isLoading = !isLoading;
    notifyListeners();
  }

  HomePageViewModel(this.bookService) {
    _fetchByName();
  }

  Future<void> _fetchByName() async {
    _changeLoading();
    try {
      data = (await bookService.searchByName("Inception"))?.result ?? [];
    } on DioError catch (e) {
      isLoading = false;
      isError = true;
      errorMessage = "${e.message}";
    } on Exception catch (e) {
      isLoading = false;
      isError = true;
      errorMessage = "${e.toString()}";
    }

    _changeLoading();
  }
}
