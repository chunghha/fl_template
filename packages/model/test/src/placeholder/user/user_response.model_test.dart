import 'package:model/model.dart';
import 'package:test/test.dart';

void main() {
  group('user response.model', () {
    test('should be able to create with constructor', () {
      final user = UserResponseModel(
        id: 1,
        name: 'Leanne Graham',
      );

      expect(user.id, 1);
      expect(user.name, 'Leanne Graham');
    });

    test('should be able to create with fromJson()', () {
      final user = UserResponseModel.fromJson({
        'id': 1,
        'name': 'Leanne Graham',
        'username': 'Bret',
        'email': 'Sincere@april.biz',
        'address': {
          'street': 'Kulas Light',
          'suite': 'Apt. 556',
          'city': 'Gwenborough',
          'zipcode': '92998-3874',
          'geo': {'lat': '-37.3159', 'lng': '81.1496'},
        },
        'phone': '1-770-736-8031 x56442',
        'website': 'hildegard.org',
        'company': {
          'name': 'Romaguera-Crona',
          'catchPhrase': 'Multi-layered client-server neural-net',
          'bs': 'harness real-time e-markets',
        },
      });

      expect(user.id, 1);
      expect(user.name, 'Leanne Graham');
    });
  });
}
