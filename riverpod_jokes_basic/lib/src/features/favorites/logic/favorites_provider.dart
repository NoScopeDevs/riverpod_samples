import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_jokes_basic/src/features/jokes/data/models/joke_model.dart';

part 'favorites_state.dart';
part 'favorites_state_notifier.dart';
part 'favorites_provider.freezed.dart';

final favoritesProvider =
    StateNotifierProvider<FavoriteNotifier, FavoriteState>(
  (ref) => FavoriteNotifier(
    favoritesJokes: ref.watch(favoriteListProvider.notifier),
    loadingJokes: ref.watch(loadingJokesProvider.notifier),
  ),
);

final favoriteListProvider = StateProvider<List<JokeModel>>(
  (ref) => [],
);

final loadingJokesProvider = StateProvider<List<JokeModel>>(
  (ref) => [],
);
