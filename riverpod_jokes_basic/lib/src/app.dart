import 'package:flutter/material.dart';
import 'package:riverpod_jokes_basic/src/features/jokes/views/jokes_page.dart';

class RiverpodJokesApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: JokesPage(),
    );
  }
}
