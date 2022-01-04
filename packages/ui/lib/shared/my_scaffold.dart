import 'package:flutter/material.dart';

import 'my_navigator.dart';

class MyScaffold extends StatelessWidget {
  late final PreferredSizeWidget appBar;
  late final Widget body;
  late final Widget? floatingActionButton;
  late final Color? backgroundColor;

  // ignore: prefer_const_constructors_in_immutables
  MyScaffold({
    Key? key,
    required this.appBar,
    required this.body,
    this.floatingActionButton,
    this.backgroundColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      backgroundColor: backgroundColor,
      body: body,
      bottomNavigationBar: MyNavigator(),
      floatingActionButton: floatingActionButton,
    );
  }
}
