import 'dart:io';

import 'package:adapter/adapter.dart';
import 'package:dio/dio.dart';

Future<void> _fetchUsers() async {
  final _adapter = PlaceHolderAdapter(
    baseUrl: 'https://jsonplaceholder.typicode.com',
  );

  try {
    final response = await _adapter.getUsers();
    // ignore: avoid_print
    print(response);
  } on DioError catch (dioError) {
    throw AdapterException.fromDioError(dioError);
  } finally {
    _adapter.close();
  }
}

void main(List<String> arguments) {
  exitCode = 0; // presume success

  _fetchUsers();
}
