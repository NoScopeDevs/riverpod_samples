import 'package:flutter_riverpod/flutter_riverpod.dart';

class SimpleCounterNotifier extends StateNotifier<int> {
  SimpleCounterNotifier() : super(0);
  void increment() {
    state++;
  }
}

final simpleCounterNotifer = StateNotifierProvider<SimpleCounterNotifier, int>(
  (ref) => SimpleCounterNotifier(),
);
