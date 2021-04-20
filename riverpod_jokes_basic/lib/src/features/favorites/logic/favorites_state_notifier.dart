part of 'favorites_provider.dart';

class FavoriteNotifier extends StateNotifier<FavoriteState> {
  FavoriteNotifier({
    required this.favoritesJokes,
    required this.loadingJokes,
    FavoriteState? initialState,
  }) : super(const FavoriteState.initial());

  final StateController<List<JokeModel>> favoritesJokes;
  final StateController<List<JokeModel>> loadingJokes;

  Future<void> toggleLike(JokeModel selecteJoke) async {
    loadingJokes.state = loadingJokes.state..add(selecteJoke);

    try {
      await Future.delayed(const Duration(seconds: 2));

      if (selecteJoke.id == 1) {
        throw Exception();
      }

      if (favoritesJokes.state.contains(selecteJoke)) {
        favoritesJokes.state = favoritesJokes.state
          ..removeWhere((joke) => selecteJoke.id == joke.id);
      } else {
        favoritesJokes.state = favoritesJokes.state..add(selecteJoke);
      }
      loadingJokes.state = loadingJokes.state..remove(selecteJoke);
      state = FavoriteState.success(selecteJoke);
    } catch (_) {
      loadingJokes.state = loadingJokes.state..remove(selecteJoke);
      state = FavoriteState.error(selecteJoke);
    }
  }
}
