part of 'login_provider.dart';

class LoginNotifier extends StateNotifier<LoginState> {
  LoginNotifier() : super(LoginState());

  void changeEmail(String value) {
    final email = EmailFormz.dirty(value);
    state = state.copyWith(email: email);
  }

  void changePassword(String value) {
    final password = PasswordFormz.dirty(value);
    state = state.copyWith(password: password);
  }
}
