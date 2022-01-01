import 'package:flutter/material.dart';
import 'package:model/model.dart';
import 'package:theme/theme.dart';

class UserListView extends StatelessWidget {
  late final List<UserResponseModel> users;

  // ignore: prefer_const_constructors_in_immutables
  UserListView(this.users, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: users.length,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          color: index.remainder(2) == 0 ? foamColor : irisColor,
          padding: EdgeInsets.all(defaultPadding),
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
