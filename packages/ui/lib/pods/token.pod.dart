import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../states/token.state.dart';

final tokenStateNotifierPod =
    StateNotifierProvider<TokenStateNotifier, TokenState>(
  (ref) => TokenStateNotifier(),
);

class TokenStateNotifier extends StateNotifier<TokenState> {
  TokenStateNotifier() : super(getTokenData());

  // ignore: use_setters_to_change_properties
  void change(TokenState token) => state = token;
}
