import 'package:equatable/equatable.dart';

import '../models/login_user.viewmodel.dart';

enum AuthStatus { loading, authenticated, unauthenticated }

class AuthState extends Equatable {
  const AuthState._({
    this.user = LoginUserViewModel.empty,
    this.status = AuthStatus.loading,
  });

  const AuthState.loading() : this._();

  const AuthState.authenticated(LoginUserViewModel user)
      : this._(user: user, status: AuthStatus.authenticated);

  const AuthState.unauthenticated()
      : this._(status: AuthStatus.unauthenticated);

  final LoginUserViewModel user;
  final AuthStatus status;

  @override
  List<Object?> get props => [user, status];
}
