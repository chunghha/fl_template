import 'package:dio/dio.dart';

import '../shared/adapter.interceptor.dart';

class PlaceHolderAdapter {
  late final String baseUrl;
  late final Dio _dio;

  PlaceHolderAdapter({
    required this.baseUrl,
    Dio? dio,
  }) {
    _dio = dio ?? Dio();
    _dio.interceptors.add(AdapterInterceptor());
  }

  // get users
  Future<Response<dynamic>> getUsers() {
    return _dio.get(
      '$baseUrl/users',
    );
  }

  // ignore: type_annotate_public_apis
  void close() {
    _dio.close();
  }
}
