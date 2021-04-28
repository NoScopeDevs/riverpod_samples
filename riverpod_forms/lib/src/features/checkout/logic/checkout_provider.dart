import 'package:formz/formz.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_forms/src/core/formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'checkout_state.dart';
part 'checkout_state_notifier.dart';
part 'checkout_provider.freezed.dart';

final checkoutNotifierProvider =
    StateNotifierProvider<CheckoutNotifier, CheckoutState>(
  (ref) => CheckoutNotifier(
    stepperIndex: ref.watch(formStepperIndexProvider.notifier),
  ),
);

final formStepperIndexProvider = StateProvider<int>((ref) => 0);
