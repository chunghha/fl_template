import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../models/login_user.viewmodel.dart';
import '../services/auth.repository.dart';
import '../states/auth.state.dart';

final authStateNotifierPod =
    StateNotifierProvider<AuthNotifier, AuthState>(AuthNotifier.new);

final _authRepositoryPod = Provider<AuthRepository>((ref) => AuthRepository());

class AuthNotifier extends StateNotifier<AuthState> {
  AuthNotifier(StateNotifierProviderRef ref)
      : _authRepository = ref.read(_authRepositoryPod),
        super(const AuthState.loading()) {
    checkUserAuth();
  }

  final AuthRepository _authRepository;

  Future<void> checkUserAuth() async {
    /// this is where you can check if you have the cached token on the phone
    /// on app startup
    /// for now we assume no such caching is done
    state = const AuthState.unauthenticated();
  }

  Future<void> loginUser(String email, String password, String token) async {
    state = const AuthState.loading();

    final user = await _authRepository.loginUser(email, password, token);

    if (user == LoginUserViewModel.empty) {
      state = const AuthState.unauthenticated();
    } else {
      /// do your pre-checks about the user before marking the state as
      /// authenticated
      state = AuthState.authenticated(user);
    }
  }

  Future<void> logoutUser() async {
    await _authRepository.logoutUser();
    state = const AuthState.unauthenticated();
  }
}
