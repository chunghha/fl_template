import 'package:flutter/material.dart';

import 'my_navigator.dart';

class MyScaffold extends StatelessWidget {
  const MyScaffold({
    Key? key,
    required this.appBar,
    required this.body,
    this.floatingActionButton,
    this.backgroundColor,
  }) : super(key: key);

  final PreferredSizeWidget appBar;
  final Widget body;
  final Widget? floatingActionButton;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      backgroundColor: backgroundColor,
      body: body,
      bottomNavigationBar: const MyNavigator(),
      floatingActionButton: floatingActionButton,
    );
  }
}
