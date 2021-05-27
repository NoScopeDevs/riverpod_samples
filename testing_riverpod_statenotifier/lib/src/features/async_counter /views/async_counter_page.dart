import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../logic/async_counter_notifier.dart';

class AsyncCounterPage extends StatelessWidget {
  const AsyncCounterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Simple Counter'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            _Count(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.read(asyncCounterNotifer.notifier).increment();
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}

class _Count extends ConsumerWidget {
  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final state = watch(asyncCounterNotifer);

    if (state is CounterInitial) {
      return const Text('Initial');
    } else if (state is CounterError) {
      return const Text('Error');
    } else if (state is CounterData) {
      return Text('${state.count}');
    } else {
      return const CircularProgressIndicator();
    }
  }
}
