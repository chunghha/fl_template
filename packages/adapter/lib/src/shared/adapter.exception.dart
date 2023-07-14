import 'package:dio/dio.dart';

class AdapterException implements Exception {
  late String message;

  AdapterException.fromDioError(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.cancel:
        message = 'Request to API cancelled';
      case DioExceptionType.connectionTimeout:
        message = 'Connection timeout with API';
      case DioExceptionType.connectionError:
        message = 'Connection failed';
      case DioExceptionType.receiveTimeout:
        message = 'Receive timeout in connection with API';
      case DioExceptionType.badResponse:
        message = _handleError(dioException.response?.statusCode);
      case DioExceptionType.sendTimeout:
        message = 'Send timeout in connection with API';
      case DioExceptionType.unknown:
      default:
        message = 'Dio Unknown exception occured';
        break;
    }
    message += ':\n  $dioException';
  }

  String _handleError(int? statusCode) {
    switch (statusCode) {
      case 400:
        return 'Bad request';
      case 404:
        return 'Requested resource not found';
      case 500:
        return 'Internal server error';
      default:
        return 'Unexpected runtime error';
    }
  }

  @override
  String toString() => message;
}
