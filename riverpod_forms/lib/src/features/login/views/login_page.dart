import 'package:flutter/material.dart';
import 'package:formz/formz.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_forms/src/features/login/logic/login_provider.dart';

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
        title: Text('Riverpod Forms'),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 20.0,
        ),
        child: Column(
          children: [
            _Email(),
            _Password(),
            _SubmitButton(),
          ],
        ),
      ),
    );
  }
}

class _Email extends ConsumerWidget {
  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final email = watch(emailProvider);

    return TextFormField(
      onChanged: (value) {
        context.read(loginNotifierProvider.notifier).changeEmail(value);
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
      loginNotifierProvider.select(
        (state) => state.password,
      ),
    );

    return TextFormField(
      onChanged: (value) {
        context.read(loginNotifierProvider.notifier).changePassword(value);
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
      loginNotifierProvider.select(
        (state) => state.status,
      ),
    );

    return ElevatedButton(
      child: Text('Submit'),
      onPressed: status.isInvalid ? null : () {},
    );
  }
}

class _Form extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final emailController = useTextEditingController();
    return Container();
  }
}
