import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:model/model.dart';
import 'package:template/widgets/user_list_view.widget.dart';

void main() {
  group('user list view.widget', () {
    final userA = UserResponseModel(
      name: 'Leanne Graham',
      phone: '1-770-736-8031 x56442',
    );
    final users = [userA];

    testWidgets('should have the name/phone given ...', (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: UserListView(users),
        ),
      );

      final userNameFinder = find.text('Leanne Graham');
      final userPhoneFinder = find.text('1-770-736-8031 x56442');

      expect(userNameFinder, findsOneWidget);
      expect(userPhoneFinder, findsOneWidget);
    });
  });
}
