part of 'pokemon_provider.dart';

extension EasyCompare on PokemonState {
  bool get isLoading => this is _Loading;
}

@freezed
abstract class PokemonState with _$PokemonState {
  /// Initial/default state
  const factory PokemonState.initial() = _Initial;

  /// Data is loading state
  const factory PokemonState.loading() = _Loading;

  const factory PokemonState.data({required List<Pokemon> pokemons}) = _Data;

  /// Error when loading data state
  const factory PokemonState.error([String? message]) = _Error;
}
