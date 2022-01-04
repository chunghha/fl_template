import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:theme/theme.dart';

import '../constants/current_page.enum.dart';
import '../pods/place_holder.pod.dart';
import '../shared/my_scaffold.dart';
import '../widgets/user_list_view.widget.dart';

class UserListPage extends ConsumerWidget {
  const UserListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _users = ref.watch(usersPod);

    return MyScaffold(
      backgroundColor: surfaceColor,
      appBar: AppBar(
        backgroundColor: overlayColor,
        title: Text(CURRENT_PAGE.userlist.toTitle()),
      ),
      body: _users.when(
        data: (_d) => UserListView(_d),
        loading: () => Center(
          child: CircularProgressIndicator(),
        ),
        error: (_e, _s) => Text('Error: $_e'),
      ),
    );
  }
}
