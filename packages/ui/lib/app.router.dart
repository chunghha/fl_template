import 'package:flutter/foundation.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'constants/current_page.enum.dart';
import 'pages/counter.page.dart';
import 'pages/error.page.dart';
import 'pages/firefly.page.dart';
import 'pages/login.page.dart';
import 'pages/shader.page.dart';
import 'pages/user_list.page.dart';
import 'pods/auth.pod.dart';
import 'states/auth.state.dart';

final appRouter = Provider<GoRouter>(
  (ref) => GoRouter(
    debugLogDiagnostics: kDebugMode,
    restorationScopeId: 'router',
    routes: [
      GoRoute(
        path: CURRENT_PAGE.counter.toPath(),
        builder: (context, state) => const CounterPage(),
      ),
      GoRoute(
        path: CURRENT_PAGE.firefly.toPath(),
        builder: (context, state) => const FireflyPage(),
      ),
      GoRoute(
        path: CURRENT_PAGE.shader.toPath(),
        builder: (context, state) => const ShaderPage(),
      ),
      GoRoute(
        path: CURRENT_PAGE.userlist.toPath(),
        builder: (context, state) => const UserListPage(),
      ),
      GoRoute(
        path: CURRENT_PAGE.login.toPath(),
        builder: (context, state) => const LoginPage(),
      ),
    ],
    errorBuilder: (context, state) => ErrorPage(state.error),
    redirect: (context, state) {
      // * hack: https://github.com/rrousselGit/river_pod/issues/815
      // * use ref.read() instead of ref.watch()
      final authStateProvider = ref.read(authStateNotifierPod);
      final routeToPath = state.uri.toString();

      if (kDebugMode) {
        print('|.. _routeToPath: $routeToPath');
        print('\\.... _authStatus: ${authStateProvider.status}');
      }
      // * not just authStatus but also check the path to go as well
      if (authStateProvider.status == AuthStatus.unauthenticated &&
          routeToPath != CURRENT_PAGE.login.toPath()) {
        return CURRENT_PAGE.login.toPath();
      }
      if (authStateProvider.status == AuthStatus.authenticated &&
          routeToPath == CURRENT_PAGE.login.toPath()) {
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
