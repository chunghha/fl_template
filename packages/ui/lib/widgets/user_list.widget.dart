import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../pods/place_holder.pod.dart';
import 'user_list_view.widget.dart';

class UserList extends ConsumerWidget {
  const UserList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _users = ref.watch(usersPod);

    return _users.when(
      data: (_d) => UserListView(_d),
      loading: () => CircularProgressIndicator(),
      error: (_e, _s) => Text('Error: $_e'),
    );
  }
}
