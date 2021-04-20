import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_await_for_provider/src/app.dart';

void main() {
  runApp(ProviderScope(child: PokemonApp()));
}
