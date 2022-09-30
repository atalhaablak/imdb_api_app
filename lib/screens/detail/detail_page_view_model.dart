import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';

import '../../controller/api_services.dart';
import '../../controller/injection.dart';
import '../../models/idModel/by_id_model.dart';

class DetailPageViewModel extends ChangeNotifier {
  bool isLoading = false;
  bool isError = false;
  String errorMessage = "";
  Result? data;

  Future<void> fetchById(String id) async {
    isLoading = false;
    try {
      data = (await serviceLocator<IBookService>().searchById(id))?.result;
      isLoading = true;
      notifyListeners();
    } on DioError catch (e) {
      isLoading = false;
      isError = true;
      errorMessage = e.message;
    } on Exception catch (e) {
      isLoading = false;
      isError = true;
      errorMessage = e.toString();
    }
  }
}
