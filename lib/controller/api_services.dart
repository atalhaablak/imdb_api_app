import 'dart:io';

import 'package:dio/dio.dart';
import 'package:imdp_api_app/models/by_id_model.dart';
import 'package:imdp_api_app/models/by_name_model.dart';
import 'package:imdp_api_app/product/errors/error_message.dart';
import 'package:imdp_api_app/product/service/api_static.dart';

abstract class IBookService {
  IBookService(this.dio);
  final Dio dio;

  Future<SearchByIdModel?> searchById(String id);
  Future<SearchByNameModel?> searchByName(String name);
}

enum RequestPath { searchByName, searchById }

class BookService extends IBookService {
  BookService(super.dio);

  @override
  Future<SearchByIdModel?> searchById(String id) async {
    final response = await dio.get(ApiStatic.searchById);

    if (response.statusCode == HttpStatus.ok) {
      final jsonBody = response.data;
      if (jsonBody is Map<String, dynamic>) {
        return SearchByIdModel.fromJson(jsonBody);
      }
    }
    return throw ProjectException.noData;
  }

  @override
  Future<SearchByNameModel?> searchByName(String name) async {
    final response = await dio.get(ApiStatic.searchByName + name);

    if (response.statusCode == HttpStatus.ok) {
      final jsonBody = response.data;
      if (jsonBody is Map<String, dynamic>) {
        return SearchByNameModel.fromJson(jsonBody);
      }
    }
    return throw ProjectException.noData;
  }
}
