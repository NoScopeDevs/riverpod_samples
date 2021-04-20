part of 'login_provider.dart';

class LoginState extends Equatable {
  LoginState({
    this.email = const Email.pure(),
    this.password = const Password.pure(),
    this.status = FormzStatus.pure,
    Date? date,
  }) : this.date = date ?? Date.pure();

  final Email email;
  final Password password;
  final Date date;
  final FormzStatus status;

  @override
  List<Object?> get props => [email, password, date];

  LoginState copyWith({
    Email? email,
    Password? password,
    Date? date,
  }) =>
      LoginState(
          email: email ?? this.email,
          date: date ?? this.date,
          password: password ?? this.password,
          status: Formz.validate([
            email ?? this.email,
            date ?? this.date,
            password ?? this.password,
          ]));
}

// @freezed
// class LoginState with _$LoginState {
//   const factory LoginState({
//     @Default(Email.pure()) Email email,
//     @Default(Password.pure()) Password password,
//     @Default(FormzStatus.pure) FormzStatus status,
//   }) = _LoginState;
// }
