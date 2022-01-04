import '../models/login_user.viewmodel.dart';

class AuthRepository {
  Future<LoginUserViewModel> loginUser(
    String email,
    String password,
    String token,
  ) async {
    if (email == 'test@fake_test.com' && password == 'yourPassIsOkay') {
      /// this is where you would do your API call
      /// and check if it was successful
      /// also store the `UserModel` in cache
      return LoginUserViewModel(
        accessToken: token,
        email: 'test@fake_test.com',
      );
    } else {
      return LoginUserViewModel.empty;
    }
  }

  Future<void> logoutUser() async {
    /// on logout, delete the cache of userdata
  }
}
