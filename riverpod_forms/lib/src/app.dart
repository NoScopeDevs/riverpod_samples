import 'package:flutter/material.dart';
import 'package:riverpod_forms/src/features/login/views/login_page.dart';

class RiverpodForms extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(),
    );
  }
}
