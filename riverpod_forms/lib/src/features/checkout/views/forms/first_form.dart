import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:formz/formz.dart';

import '../../logic/checkout_provider.dart';
import 'form_constants.dart';

class FirstForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        _CableLength(),
        _Warranty(),
        _SubmitButton(),
      ],
    );
  }
}

class _CableLength extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final cableLenghtIndex = useProvider(
      checkoutNotifierProvider.select(
        (state) => state.cableLengthIndex,
      ),
    );
    return Column(
      children: [
        const Text('Cable Lenght'),
        Row(
          children: [
            for (var i = 0; i < kCableLengthOptions.length; i++)
              Expanded(
                child: _OptionCard(
                  isSelected: i == cableLenghtIndex.value,
                  option: kCableLengthOptions[i],
                  onPressed: () => context
                      .read(checkoutNotifierProvider.notifier)
                      .changeCableLengthIndex(i),
                ),
              ),
          ],
        )
      ],
    );
  }
}

class _Warranty extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final warrantyIndex = useProvider(
      checkoutNotifierProvider.select(
        (state) => state.warrantyIndex,
      ),
    );
    return Column(
      children: [
        const Text('Warranty Lenght'),
        Row(
          children: [
            for (var i = 0; i < kWarrantyOptions.length; i++)
              Expanded(
                child: _OptionCard(
                  isSelected: i == warrantyIndex.value,
                  option: kWarrantyOptions[i],
                  onPressed: () => context
                      .read(checkoutNotifierProvider.notifier)
                      .changeWarrantyIndex(i),
                ),
              ),
          ],
        )
      ],
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

    return Align(
      child: ElevatedButton(
        onPressed: status.isInvalid
            ? null
            : () => context.read(checkoutNotifierProvider.notifier).submit(),
        child: const Text('Submit'),
      ),
    );
  }
}

class _OptionCard extends StatelessWidget {
  const _OptionCard({
    Key? key,
    required this.option,
    required this.onPressed,
    required this.isSelected,
  }) : super(key: key);

  final CheckoutOption option;
  final void Function() onPressed;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: isSelected ? Colors.lightGreen : null,
      child: ListTile(
        onTap: onPressed,
        title: Text(option.title),
        subtitle: Text(option.description),
        trailing: Text('${option.price} \$'),
      ),
    );
  }
}
