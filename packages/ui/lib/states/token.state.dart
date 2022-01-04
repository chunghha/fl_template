import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

class TokenState extends Equatable {
  const TokenState(this.accessToken, this.refreshToken);

  final String accessToken;
  final String refreshToken;

  @override
  List<Object?> get props => [accessToken, refreshToken];

  @override
  String toString() => 'accessToken: $accessToken, refreshToken: $refreshToken';
}

TokenState getTokenData() {
  // ignore: do_not_use_environment
  const token = String.fromEnvironment(
    'token',
    defaultValue: '0002BIhGyCWXtb0YpIeRvED8TZ6R',
  );

  if (kDebugMode) {
    print('token $token');
  }

  return const TokenState(token, '');
}
