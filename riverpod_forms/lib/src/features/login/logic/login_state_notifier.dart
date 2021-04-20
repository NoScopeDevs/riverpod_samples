part of 'login_provider.dart';

/// Defines all the Login logic the app will use
class LoginNotifier extends StateNotifier<LoginState> {
  /// Base constructor expects StateNotifier use_cases to
  /// read its usecases and also defines inital state
  LoginNotifier() : super(LoginState());

  void emailChanged(String value) {
    final email = Email.dirty(value);
    state = state.copyWith(email: email);
  }

  void passwordChanged(String value) {
    final password = Password.dirty(value);
    state = state.copyWith(password: password);
  }

  void dateChanged(DateTime? value) {
    final date = Date.dirty(value ?? state.date.value);
    state = state.copyWith(date: date);
  }
}
