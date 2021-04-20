import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../logic/pokemon_provider.dart';

///PokemonPage
class PokemonPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _SelectedPokemon(),
          _Button(),
        ],
      ),
    );
  }
}

class _SelectedPokemon extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final selectedPokemon = useProvider(selectedPokemonProvider);
    final pokemon = selectedPokemon.state;

    if (pokemon == null) {
      return Align(child: Text('No pokemon selected'));
    }

    return Card(
      child: ListTile(
        title: Text(pokemon.name),
      ),
    );
  }
}

class _Button extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final pokemonListState = useProvider(pokemonNotifierProvider);
    final pokemonListNotifier = context.read(pokemonNotifierProvider.notifier);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text('PokemonListState: '),
        pokemonListState.when(
          initial: () => Text('Initial'),
          loading: () => CircularProgressIndicator(),
          data: (_) => Column(
            children: [
              Text('Data'),
              ElevatedButton(
                onPressed: () {
                  pokemonListNotifier.nextPokemon();
                },
                child: Text('Next Pokemon'),
              ),
            ],
          ),
          error: (_) => Text('Error'),
        ),
      ],
    );
  }
}
