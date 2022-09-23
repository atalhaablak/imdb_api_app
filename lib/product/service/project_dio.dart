import 'package:dio/dio.dart';
import 'package:imdp_api_app/product/service/api_static.dart';

mixin ProjectDioMixin {
  final dio = Dio(
    BaseOptions(
      baseUrl: ApiStatic.baseUrl,
      headers: {
        "Content-Type": ApiStatic.contentType,
        "Authorization": ApiStatic.apiKey,
      },
    ),
  );
}
