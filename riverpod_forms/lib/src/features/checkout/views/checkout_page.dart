import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:formz/formz.dart';

import '../logic/checkout_provider.dart';
import 'forms/forms.dart';
import 'checkout_success_page.dart';

///CheckoutPage
class CheckoutPage extends StatelessWidget {
  ///CheckoutPage constructor
  const CheckoutPage({Key? key}) : super(key: key);

  ///CheckoutPage [routeName]
  static const routeName = 'CheckoutPage';

  ///Router for CheckoutPage
  static Route route() {
    return MaterialPageRoute<void>(builder: (_) => const CheckoutPage());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Riverpod Forms'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20.0,
          vertical: 20.0,
        ),
        child: _StatusListener(
          child: Column(
            children: [
              _Stepper(),
              Expanded(child: _FormSelector()),
            ],
          ),
        ),
      ),
    );
  }
}

class _StatusListener extends StatelessWidget {
  const _StatusListener({
    Key? key,
    required this.child,
  }) : super(key: key);
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ProviderListener<CheckoutState>(
      provider: checkoutNotifierProvider,
      onChange: (context, state) {
        if (state.status.isSubmissionSuccess) {
          Navigator.push(context, CheckoutSuccessPage.route());
        }
      },
      child: child,
    );
  }
}

class _Stepper extends ConsumerWidget {
  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final stepperIndex = watch(formStepperIndexProvider);
    return Column(
      children: [
        Text(
          'This is Step: ${stepperIndex.state + 1}/2',
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ],
    );
  }
}

class _FormSelector extends ConsumerWidget {
  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final stepperIndex = watch(formStepperIndexProvider);

    switch (stepperIndex.state) {
      case 0:
        return FirstForm();
      case 1:
        return SecondForm();
      default:
        return const Text('Error Occurred');
    }
  }
}
