import 'dart:math';

import 'package:flutter_riverpod/flutter_riverpod.dart';

part 'async_counter_state.dart';

class AsyncCounterNotifier extends StateNotifier<AsyncCounterState> {
  AsyncCounterNotifier() : super(CounterInitial());
  void increment() async {
    state = CounterLoading();

    //Simulate delay
    await Future.delayed(const Duration(seconds: 2));

    //Simulate Error
    final random = Random().nextInt(1);
    if (random > .8) {
      state = CounterError();
      return;
    }

    if (state is CounterData) {
      state = CounterData((state as CounterData).count + 1);
    } else {
      state = CounterData(0);
    }
  }
}

final asyncCounterNotifer =
    StateNotifierProvider<AsyncCounterNotifier, AsyncCounterState>(
  (ref) => AsyncCounterNotifier(),
);
