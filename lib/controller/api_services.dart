import 'package:imdp_api_app/models/idModel/by_id_model.dart';
import 'package:imdp_api_app/product/service/api_static.dart';
import 'package:imdp_api_app/product/service/project_dio.dart';

import '../models/nameModel/by_name_model.dart';

abstract class IBookService {
  Future<ByIdModel?> searchById(String id);
  Future<ByNameModel?> searchByName(String name);
}

enum RequestPath { searchByName, searchById }

class BookService extends IBookService with ProjectDioMixin {
  @override
  Future<ByIdModel?> searchById(String id) async {
    final response = await dio.get(ApiStatic.searchById + id);
    final jsonBody = response.data;
    if (jsonBody is Map<String, dynamic>) {
      return ByIdModel.fromJson(jsonBody);
    }
    return null;
  }

  @override
  Future<ByNameModel?> searchByName(String name) async {
    final response = await dio.get(ApiStatic.searchByName + name);
    final jsonBody = response.data;
    if (jsonBody is Map<String, dynamic>) {
      return ByNameModel.fromJson(jsonBody);
    }
    return null;
  }
}
