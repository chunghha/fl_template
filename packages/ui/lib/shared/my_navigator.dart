import 'package:basic_utils/basic_utils.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:theme/theme.dart';

import '../constants/constants.dart';
import '../constants/current_page.enum.dart';
import '../pods/current_page.pod.dart';
import '../states/current_page.state.dart';
import 'router.helper.dart';

class MyNavigator extends ConsumerWidget {
  const MyNavigator({super.key});

  List<NavigationDestination> _navbarItems() {
    final items = <NavigationDestination>[];

    CURRENT_PAGE.values.asMap().forEach((k, v) {
      if (k < bottomNavbarItemCount) {
        items.add(
          NavigationDestination(
            icon: v.toIcon(),
            label: StringUtils.capitalize(v.name),
          ),
        );
      }
    });

    return items;
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentPageProvider = ref.watch(currentPagePod);

    return NavigationBar(
      backgroundColor: surfaceColor,
      destinations: _navbarItems(),
      indicatorColor: subtleColor,
      selectedIndex: currentPageProvider.last.currentPage.toIndex(),
      onDestinationSelected: (index) {
        if (kDebugMode) {
          print('|.. _index onTap: $index');
        }
        ref.read(currentPagePod.notifier).update(
              CurrentPageState(
                CURRENT_PAGE.values[index],
                CURRENT_PAGE.values[index].toPath(),
              ),
            );
        goForward(
          context: context,
          ref: ref,
          pageToGo: CURRENT_PAGE.values[index],
        );
      },
    );
  }
}
