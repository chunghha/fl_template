import 'package:dio/dio.dart';
import 'package:logger/logger.dart';

class AdapterInterceptor extends Interceptor {
  final Logger _logger = Logger();

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    _logger.i(
      'REQ[${options.method}]::PATH: ${options.path}\nHEADERS[${options.headers}]',
    );

    return super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    // ignore: avoid_dynamic_calls
    _logger.i(
      'RES[${response.statusCode}]::PATH: ${response.requestOptions.path}\n$response',
    );

    return super.onResponse(response, handler);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    // ignore: avoid_dynamic_calls
    _logger.e(
      'ERROR[${err.response?.statusCode}]::PATH: ${err.requestOptions.path}',
    );

    return super.onError(err, handler);
  }
}
