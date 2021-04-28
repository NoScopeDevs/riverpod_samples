part of 'checkout_provider.dart';

@freezed
class CheckoutState with _$CheckoutState {
  const factory CheckoutState({
    @Default(EmailFormz.pure()) EmailFormz email,
    @Default(PasswordFormz.pure()) PasswordFormz password,
    @Default(IntFormz.pure()) IntFormz cableLengthIndex,
    @Default(IntFormz.pure()) IntFormz warrantyIndex,
    @Default(FormzStatus.pure) FormzStatus status,
  }) = _CheckoutState;
}
