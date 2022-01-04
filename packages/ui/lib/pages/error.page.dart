import 'package:basic_utils/basic_utils.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../constants/current_page.enum.dart';
import '../shared/my_scaffold.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage(this.error, {Key? key}) : super(key: key);
  final Exception? error;

  get surfaceColor => null;

  @override
  Widget build(BuildContext context) => MyScaffold(
        appBar: AppBar(
          backgroundColor: surfaceColor,
          title: Text(StringUtils.capitalize('Page Not Found')),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(error?.toString() ?? 'page not found'),
              TextButton(
                onPressed: () => context.go('/'),
                child: Text(
                  StringUtils.capitalize(CURRENT_PAGE.counter.name),
                ),
              ),
            ],
          ),
        ),
      );
}
