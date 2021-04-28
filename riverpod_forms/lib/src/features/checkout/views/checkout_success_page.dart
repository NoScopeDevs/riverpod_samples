import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../logic/checkout_provider.dart';
import 'forms/form_constants.dart';

///CheckoutSuccessPage
class CheckoutSuccessPage extends StatelessWidget {
  ///CheckoutSuccessPage constructor
  const CheckoutSuccessPage({Key? key}) : super(key: key);

  ///CheckoutSuccessPage [routeName]
  static const routeName = 'CheckoutSuccessPage';

  ///Router for CheckoutSuccessPage
  static Route route() {
    return MaterialPageRoute<void>(builder: (_) => const CheckoutSuccessPage());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Success'),
      ),
      body: _OrderData(),
    );
  }
}

class _OrderData extends ConsumerWidget {
  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final checkoutState = watch(checkoutNotifierProvider);

    return Column(
      children: [
        ListTile(
          title: Text(
            kCableLengthOptions[checkoutState.cableLengthIndex.value].title,
          ),
        ),
        ListTile(
          title: Text(
            kWarrantyOptions[checkoutState.warrantyIndex.value].title,
          ),
        ),
        ListTile(
          title: Text(
            checkoutState.email.value,
          ),
        ),
        ListTile(
          title: Text(
            checkoutState.password.value,
          ),
        ),
      ],
    );
  }
}
