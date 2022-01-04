import 'package:basic_utils/basic_utils.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:theme/theme.dart';

import '../constants/current_page.enum.dart';
import '../pods/curret_page.pod.dart';
import '../states/current_page.state.dart';
import 'router.helper.dart';

class MyNavigator extends ConsumerWidget {
  const MyNavigator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _currentPageProvider = ref.watch(currentPagePod);

    return BottomNavigationBar(
      backgroundColor: baseColor,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: CURRENT_PAGE.counter.toIcon(),
          label: StringUtils.capitalize(CURRENT_PAGE.counter.name),
        ),
        BottomNavigationBarItem(
          icon: CURRENT_PAGE.firefly.toIcon(),
          label: StringUtils.capitalize(CURRENT_PAGE.firefly.name),
        ),
        BottomNavigationBarItem(
          icon: CURRENT_PAGE.userlist.toIcon(),
          label: StringUtils.capitalize(CURRENT_PAGE.userlist.name),
        ),
      ],
      currentIndex: _currentPageProvider.last.currentPage.toIndex(),
      onTap: (_index) {
        if (kDebugMode) {
          print('|.. _index onTap: $_index');
        }
        ref.read(currentPagePod.notifier).update(
              CurrentPageState(
                CURRENT_PAGE.values[_index],
                CURRENT_PAGE.values[_index].toPath(),
              ),
            );
        goForward(
          context: context,
          ref: ref,
          pageToGo: CURRENT_PAGE.values[_index],
        );
      },
    );
  }
}
