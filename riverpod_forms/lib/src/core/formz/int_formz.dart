import 'package:formz/formz.dart';

enum IntValidationError { invalid }

class IntFormz extends FormzInput<int, IntValidationError> {
  const IntFormz.pure() : super.pure(0);
  const IntFormz.dirty(int value) : super.dirty(value);

  @override
  IntValidationError? validator(int? value) {
    if (value == null) return IntValidationError.invalid;
    return null;
  }
}
