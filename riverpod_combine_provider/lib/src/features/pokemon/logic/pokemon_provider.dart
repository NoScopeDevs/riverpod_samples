import 'dart:math';

import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_await_for_provider/src/features/pokemon/model/pokemon_model.dart';

part 'pokemon_state.dart';
part 'pokemon_state_notifier.dart';

part 'pokemon_provider.freezed.dart';

/// Provider to use the PokemonStateNotifier
final pokemonNotifierProvider =
    StateNotifierProvider<PokemonNotifier, PokemonState>(
  (ref) => PokemonNotifier(
    selectedPokemonController: ref.watch(selectedPokemonProvider.notifier),
  )..getPokemons(),
);

final selectedPokemonProvider = StateProvider<Pokemon?>((ref) => null);
