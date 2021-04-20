import 'package:formz/formz.dart';

enum DateValidationError { invalid }

class Date extends FormzInput<DateTime, DateValidationError> {
  Date.pure() : super.pure(DateTime.now());
  Date.dirty(DateTime value) : super.dirty(value);

  @override
  DateValidationError? validator(DateTime? value) {
    if (value == null) return DateValidationError.invalid;
    if (value.isBefore(DateTime.now())) return DateValidationError.invalid;
    return null;
  }
}
