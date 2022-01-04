import 'package:flutter/foundation.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'constants/current_page.enum.dart';
import 'pages/counter.page.dart';
import 'pages/error.page.dart';
import 'pages/firefly.page.dart';
import 'pages/login.page.dart';
import 'pages/user_list.page.dart';
import 'pods/auth.pod.dart';
import 'states/auth.state.dart';

final appRouter = Provider<GoRouter>(
  (ref) => GoRouter(
    debugLogDiagnostics: kDebugMode,
    restorationScopeId: 'router',
    urlPathStrategy: UrlPathStrategy.path,
    routes: [
      GoRoute(
        path: CURRENT_PAGE.counter.toPath(),
        builder: (context, state) => CounterPage(),
      ),
      GoRoute(
        path: CURRENT_PAGE.firefly.toPath(),
        builder: (context, state) => FireflyPage(),
      ),
      GoRoute(
        path: CURRENT_PAGE.userlist.toPath(),
        builder: (context, state) => UserListPage(),
      ),
      GoRoute(
        path: CURRENT_PAGE.login.toPath(),
        builder: (context, state) => LoginPage(),
      ),
    ],
    errorBuilder: (context, state) => ErrorPage(state.error!),
    redirect: (state) {
      // * hack: https://github.com/rrousselGit/river_pod/issues/815
      // * use ref.read() instead of ref.watch()
      final _authStateProvider = ref.read(authStateNotifierPod);
      final _routeToPath = state.location;

      if (kDebugMode) {
        print('|.. _routeToPath: $_routeToPath');
        print('\\.... _authStatus: ${_authStateProvider.status}');
      }
      // * not just authStatus but also check the path to go as well
      if (_authStateProvider.status == AuthStatus.unauthenticated &&
          _routeToPath != CURRENT_PAGE.login.toPath()) {
        return CURRENT_PAGE.login.toPath();
      }
      if (_authStateProvider.status == AuthStatus.authenticated &&
          _routeToPath == CURRENT_PAGE.login.toPath()) {
        return CURRENT_PAGE.counter.toPath();
      }

      // * go_router got to hit this null at the end to finish routing
      return null;
    },
  ),
);

// * provide this Listenable to be listened for refreshing of routing
final refreshListenableProvider = Provider(
  (ref) => Listenable.merge(
    [
      ValueNotifier(ref.watch(authStateNotifierPod.select((state) => state))),
    ],
  ),
);
