import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_forms/src/core/forms/models/email.dart';
import '../logic/login_provider.dart';

///LoginPage
class LoginPage extends StatelessWidget {
  ///LoginPage constructor
  const LoginPage({Key? key}) : super(key: key);

  ///LoginPage [routeName]
  static const routeName = 'LoginPage';

  ///Router for LoginPage
  static Route route() {
    return MaterialPageRoute<void>(builder: (_) => const LoginPage());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: const _Form(),
    );
  }
}

class _Form extends StatelessWidget {
  const _Form();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _Email(),
          SizedBox(height: 20.0),
          _Date(),
          SizedBox(height: 20.0),
          _Password(),
          SizedBox(height: 20.0),
          _SubmitButton(),
        ],
      ),
    );
  }
}

class _Email extends ConsumerWidget {
  const _Email();

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    print('Email');
    final email = watch(emailProvider);
    return TextFormField(
      onChanged: context.read(loginNotifierProvider.notifier).emailChanged,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        labelText: 'Email',
        errorText: email.invalid ? email.error?.message : null,
      ),
    );
  }
}

class _Date extends HookWidget {
  const _Date();

  @override
  Widget build(BuildContext context) {
    print('Date');

    final date = useProvider(
      loginNotifierProvider.select((state) => state.date),
    );

    final dateController = useTextEditingController(
      text: date.value.toString(),
    );

    useEffect(
      () {
        dateController.text = date.value.toString();
      },
      [date],
    );

    return GestureDetector(
      onTap: () async {
        final selectedDate = await showDatePicker(
          context: context,
          initialDate: date.value,
          firstDate: DateTime(2000),
          lastDate: DateTime(2025),
          helpText: 'Select booking date', // Can be used as title
          cancelText: 'Not now',
          confirmText: 'Book',
        );

        context.read(loginNotifierProvider.notifier).dateChanged(selectedDate);
      },
      child: AbsorbPointer(
        child: TextFormField(
          controller: dateController,
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
            errorText: date.invalid ? 'Invalid Date' : null,
          ),
        ),
      ),
    );
  }
}

class _Password extends HookWidget {
  const _Password();

  @override
  Widget build(BuildContext context) {
    print('Password');

    final password = useProvider(
      loginNotifierProvider.select((state) => state.password),
    );
    return TextFormField(
      onChanged: context.read(loginNotifierProvider.notifier).passwordChanged,
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        labelText: 'Password',
        errorText: password.invalid ? 'invalid password' : null,
      ),
    );
  }
}

class _SubmitButton extends HookWidget {
  const _SubmitButton();

  @override
  Widget build(BuildContext context) {
    final status = useProvider(
      loginNotifierProvider.select((state) => state.status),
    );

    return ElevatedButton(
      onPressed: status.isValidated ? () {} : null,
      child: Text('Press Me'),
    );
  }
}
