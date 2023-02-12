import 'dart:convert';

import 'package:adapter/adapter.dart';
import 'package:diox/diox.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';

void main() {
  late Dio dio;
  const endpoint = '/users';
  const users = '''
    [
      {
        "id": 1,
        "name": "Leanne Graham"
      }
    ]
  ''';

  group('place holder.adapter, ', () {
    late DioAdapter dioAdapter;

    setUpAll(() {
      dioAdapter = DioAdapter(dio: Dio());
      dio = Dio()..httpClientAdapter = dioAdapter;
    });

    test('place holder adapter when getUsers() is called ...', () async {
      dioAdapter.onGet(
        endpoint,
        (request) => request.reply(200, users),
      );

      // run
      final placeHolderAdapter = PlaceHolderAdapter(
        baseUrl: '',
        dio: dio,
      );

      final responded = await placeHolderAdapter.getUsers();
      final List<dynamic> parsed = jsonDecode(responded.toString());

      // assert
      expect(parsed.first['id'], 1);
    });
  });
}
