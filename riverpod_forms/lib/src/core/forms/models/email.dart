import 'package:formz/formz.dart';
import 'package:riverpod_forms/src/core/forms/models/models_i18n.dart';

enum EmailValidationError { invalid, length }

extension ErrorMessage on EmailValidationError {
  String? get message {
    switch (this) {
      case EmailValidationError.length:
        return kLengthError.i18n;
      case EmailValidationError.invalid:
        return kInvalid.i18n;
      default:
        return null;
    }
  }
}

class Email extends FormzInput<String, EmailValidationError> {
  const Email.pure() : super.pure('');
  const Email.dirty(String value) : super.dirty(value);

  static final RegExp _emailRegExp = RegExp(
    r'^[a-zA-Z0-9.!#$%&’*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$',
  );

  @override
  EmailValidationError? validator(String? val) {
    final value = val ?? '';
    if (value.length <= 3) return EmailValidationError.length;
    return _emailRegExp.hasMatch(value) ? null : EmailValidationError.invalid;
  }
}
