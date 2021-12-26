import 'dart:convert';

import 'package:adapter/adapter.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';

void main() {
  late Dio dio;
  const _endpoint = '/users';
  const _users = '''
    [
      { 
        "id": 1,
        "name": "Leanne Graham"
      }
    ]
  ''';

  group('place holder.aapter, ', () {
    late DioAdapter dioAdapter;

    setUpAll(() {
      dioAdapter = DioAdapter(dio: Dio());
      dio = Dio()..httpClientAdapter = dioAdapter;
    });

    test('place holder adapter when getUsers() is called ...', () async {
      dioAdapter.onGet(
        _endpoint,
        (request) => request.reply(200, _users),
      );

      // run
      final _placeHolderAdapter = PlaceHolderAdapter(
        baseUrl: '',
        dio: dio,
      );

      final _responded = await _placeHolderAdapter.getUsers();
      final List<dynamic> _parsed = jsonDecode(_responded.toString());

      // assert
      expect(_parsed.first['id'], 1);
    });
  });
}
