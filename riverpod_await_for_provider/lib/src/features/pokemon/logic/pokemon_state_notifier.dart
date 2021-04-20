part of 'pokemon_provider.dart';

/// Defines all the Pokemon logic the app will use
class PokemonNotifier extends StateNotifier<PokemonState> {
  /// Base constructor expects StateNotifier use_cases to
  /// read its usecases and also defines inital state
  PokemonNotifier({
    required this.selectedPokemonController,
  }) : super(PokemonState.initial());

  final StateController<Pokemon?> selectedPokemonController;
  final _pokemons = <Pokemon>[];

  Future<void> getPokemons() async {
    state = PokemonState.loading();
    final client = Dio();

    try {
      final result = await client
          .get('https://pokeapi.co/api/v2/pokemon?limit=100&offset=200');

      for (var pokemon in result.data['results']) {
        _pokemons.add(Pokemon.fromJson(pokemon));
      }

      if (_pokemons.isNotEmpty) {
        selectedPokemonController.state = _pokemons.first;
      }

      state = PokemonState.data(pokemons: _pokemons);
    } catch (e) {
      state = PokemonState.error();
    }
  }

  void nextPokemon() {
    if (_pokemons.isNotEmpty) {
      final index = Random().nextInt(_pokemons.length);
      selectedPokemonController.state = _pokemons[index];
    }
  }
}
