import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:testing_riverpod_statenotifier/src/features/simple_counter/logic/simple_counter_notifier.dart';

void main() {
  group('SimpleCounterNotifier', () {
    final _counterNotifier = StateNotifierProvider<SimpleCounterNotifier, int>(
      (ref) => SimpleCounterNotifier(),
    );

    test('initial state is 0', () {
      //1. Setup
      final container = ProviderContainer();
      final counterNotifier = container.read(_counterNotifier.notifier);

      //2. Act
      //3. Expect
      expect(counterNotifier.debugState, 0);
    });

    group('increment()', () {
      test('increment 1', () {
        //1. Setup
        final container = ProviderContainer();
        final counterNotifier = container.read(_counterNotifier.notifier);

        //2. Act
        //3. Expect
        expect(counterNotifier.debugState, 0);
        counterNotifier.increment();
        expect(counterNotifier.debugState, 1);
      });

      test('increment 2', () {
        //1. Setup
        final container = ProviderContainer();
        final counterNotifier = container.read(_counterNotifier.notifier);

        //2. Act
        //3. Expect
        expect(counterNotifier.debugState, 0);
        counterNotifier..increment()..increment();
        expect(counterNotifier.debugState, 2);
      });
    });
  });
}
