import 'package:equatable/equatable.dart';

class LoginUserViewModel extends Equatable {
  const LoginUserViewModel({required this.accessToken, required this.email});

  final String accessToken;
  final String email;

  @override
  List<Object> get props => [accessToken, email];

  @override
  String toString() => 'email: $email, access_token: $accessToken';

  static const empty = LoginUserViewModel(accessToken: '-', email: '-');
}
