import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../constants/current_page.enum.dart';
import '../pods/current_page.pod.dart';
import '../states/current_page.state.dart';

String _getSubloc(String path) {
  // * this logic required by that nested routes not configured with '/'
  // * in the enum, however, router path should start with '/' at runtime.
  return path.startsWith('/') ? path : '/$path';
}

void goBack({
  required BuildContext context,
  required WidgetRef ref,
}) {
  // * remove the last entry then go back with new last entry's path
  ref.read(currentPagePod.notifier).remove();
  context.go(_getSubloc(ref.read(currentPagePod).last.path));
}

void goByPath({
  required BuildContext context,
  required WidgetRef ref,
  required String path,
}) {
  final locations = path.split('/');
  var key = 0;
  CURRENT_PAGE.values.asMap().forEach((k, v) {
    // * find out which entry has the path to match with
    if (v.toPath().substring(1) == locations[1]) {
      key = k;
    }
  });

  ref
      .read(currentPagePod.notifier)
      .update(CurrentPageState(CURRENT_PAGE.values[key], path));
  context.go(_getSubloc(path));
}

void goForward({
  required BuildContext context,
  required WidgetRef ref,
  required CURRENT_PAGE pageToGo,
  List<String>? subPaths,
}) {
  // * subloc should start with '/' for nested routes as well
  var path = _getSubloc(pageToGo.toPath());

  if (subPaths != null && subPaths.isNotEmpty) {
    subPaths.fold(path, (_, entry) => path += '/$entry');
  }

  ref.read(currentPagePod.notifier).update(CurrentPageState(pageToGo, path));
  context.go(path);
}
