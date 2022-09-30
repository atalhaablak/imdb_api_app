import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import '../../controller/api_services.dart';
import '../../models/nameModel/by_name_model.dart';

class SearchPageViewModel extends ChangeNotifier {
  TextEditingController nameController = TextEditingController();
  IBookService service = BookService();
  List<Result>? movieList = [];
  bool isLoading = false;
  bool isError = false;
  String errorMessage = "";

  Future<void> getSearchName(String name) async {
    isLoading = false;
    try {
      final response = (await service.searchByName(name))?.result;
      movieList = response;
      isLoading = true;
    } on DioError catch (e) {
      isLoading = false;
      isError = true;
      errorMessage = e.message;
    } on Exception catch (e) {
      isLoading = false;
      isError = true;
      errorMessage = e.toString();
    }

    notifyListeners();
  }
}

// movieList![index].poster.toSt