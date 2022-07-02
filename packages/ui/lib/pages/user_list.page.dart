import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:theme/theme.dart';

import '../constants/current_page.enum.dart';
import '../pods/place_holder.pod.dart';
import '../shared/my_scaffold.dart';
import '../widgets/user_list_view.widget.dart';

class UserListPage extends ConsumerWidget {
  const UserListPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final users = ref.watch(usersPod);

    return MyScaffold(
      backgroundColor: surfaceColor,
      appBar: AppBar(
        backgroundColor: overlayColor,
        title: Text(
          CURRENT_PAGE.userlist.toTitle(),
          style: titleStyle,
        ),
      ),
      body: users.when(
        data: UserListView.new,
        loading: () => const Center(
          child: CircularProgressIndicator(),
        ),
        error: (e, s) => Text('Error: $e'),
      ),
    );
  }
}
