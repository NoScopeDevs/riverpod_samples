part of 'checkout_provider.dart';

class CheckoutNotifier extends StateNotifier<CheckoutState> {
  CheckoutNotifier({
    required this.stepperIndex,
  }) : super(const CheckoutState());

  final StateController<int> stepperIndex;

  void changeEmail(String value) {
    final email = EmailFormz.dirty(value);
    state = state.copyWith(
      email: email,
      status: validateSecondForm(email: email),
    );
  }

  void changePassword(String value) {
    final password = PasswordFormz.dirty(value);
    state = state.copyWith(
      password: password,
      status: validateSecondForm(password: password),
    );
  }

  void changeCableLengthIndex(int value) {
    final cableLengthIndex = IntFormz.dirty(value);
    state = state.copyWith(
      cableLengthIndex: cableLengthIndex,
      status: validateFirstForm(cableLengthIndex: cableLengthIndex),
    );
  }

  void changeWarrantyIndex(int value) {
    final warrantyIndex = IntFormz.dirty(value);
    state = state.copyWith(
      warrantyIndex: warrantyIndex,
      status: validateFirstForm(warrantyIndex: warrantyIndex),
    );
  }

  void submit() async {
    if (!state.status.isValidated) return;
    if (stepperIndex.state < 1) {
      stepperIndex.state++;
      state = state.copyWith(
        status: FormzStatus.invalid,
      );
    } else {
      state = state.copyWith(
        status: FormzStatus.submissionInProgress,
      );
      await Future.delayed(const Duration(seconds: 2));

      state = state.copyWith(
        status: FormzStatus.submissionSuccess,
      );
    }
  }

  //* Validators
  FormzStatus validateFirstForm({
    IntFormz? cableLengthIndex,
    IntFormz? warrantyIndex,
  }) {
    return Formz.validate([
      cableLengthIndex ?? state.cableLengthIndex,
      warrantyIndex ?? state.warrantyIndex,
    ]);
  }

  FormzStatus validateSecondForm({
    EmailFormz? email,
    PasswordFormz? password,
  }) {
    return Formz.validate([
      email ?? state.email,
      password ?? state.password,
    ]);
  }
}
