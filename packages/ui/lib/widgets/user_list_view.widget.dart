import 'package:flutter/material.dart';
import 'package:model/model.dart';
import 'package:theme/theme.dart';

class UserListView extends StatelessWidget {
  const UserListView(this.users, {super.key});

  final List<UserResponseModel> users;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: users.length,
      itemBuilder: (context, index) {
        return Container(
          color: index.remainder(2) == 0 ? foamColor : irisColor,
          padding: const EdgeInsets.all(defaultPadding),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                users[index].name ?? '',
                style: baseHeaderStyle,
              ),
              Text(
                users[index].phone ?? '',
                style: baseTextStyle,
              ),
            ],
          ),
        );
      },
    );
  }
}
