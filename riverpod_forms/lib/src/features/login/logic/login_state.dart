part of 'login_provider.dart';

extension Validator on LoginState {
  FormzStatus get status => Formz.validate([
        email,
        password,
      ]);
}

@freezed
class LoginState with _$LoginState {
  const factory LoginState({
    @Default(const EmailFormz.pure()) EmailFormz email,
    @Default(const PasswordFormz.pure()) PasswordFormz password,
  }) = _LoginState;
}
