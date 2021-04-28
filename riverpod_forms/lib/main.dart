import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_forms/src/app.dart';

void main() {
  runApp(
    ProviderScope(child: RiverpodForms()),
  );
}
