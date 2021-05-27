import 'package:flutter/material.dart';
import 'package:testing_riverpod_statenotifier/src/features/simple_counter/simple_counter.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Testing Riverpod State Notifier',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SimpleCounterPage(),
    );
  }
}
