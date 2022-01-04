import 'package:equatable/equatable.dart';

class LoginUserViewModel extends Equatable {
  final String accessToken;
  final String email;

  const LoginUserViewModel({required this.accessToken, required this.email});

  @override
  List<Object> get props => [accessToken, email];

  @override
  String toString() => 'email: $email, access_token: $accessToken';

  static const empty = LoginUserViewModel(accessToken: '-', email: '-');
}
