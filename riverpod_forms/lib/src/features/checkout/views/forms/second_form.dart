import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:formz/formz.dart';

import '../../logic/checkout_provider.dart';

class SecondForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _Email(),
        _Password(),
        _SubmitButton(),
      ],
    );
  }
}

class _Email extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final email = useProvider(
      checkoutNotifierProvider.select(
        (state) => state.email,
      ),
    );
    return TextFormField(
      onChanged: (value) {
        context.read(checkoutNotifierProvider.notifier).changeEmail(value);
      },
      decoration: InputDecoration(
        labelText: 'Email',
        errorText: email.invalid ? email.error?.toString() : null,
      ),
    );
  }
}

class _Password extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final password = useProvider(
      checkoutNotifierProvider.select(
        (state) => state.password,
      ),
    );

    return TextFormField(
      onChanged: (value) {
        context.read(checkoutNotifierProvider.notifier).changePassword(value);
      },
      decoration: InputDecoration(
        labelText: 'Password',
        errorText: password.invalid ? password.error?.toString() : null,
      ),
    );
  }
}

class _SubmitButton extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final status = useProvider(
      checkoutNotifierProvider.select(
        (state) => state.status,
      ),
    );

    return status.isSubmissionInProgress
        ? const CircularProgressIndicator()
        : Row(
            children: [
              ElevatedButton(
                onPressed: () => context.read(formStepperIndexProvider).state--,
                child: const Text('back'),
              ),
              ElevatedButton(
                onPressed: status.isInvalid
                    ? null
                    : () => context
                        .read(checkoutNotifierProvider.notifier)
                        .submit(),
                child: const Text('Submit'),
              ),
            ],
          );
  }
}
