part of 'jokes_provider.dart';

class JokesNotifier extends StateNotifier<JokesState> {
  JokesNotifier({
    JokesState? initialState,
    required IJokesRepository jokesRepository,
  })   : _jokesRepository = jokesRepository,
        super(initialState ?? const JokesState.initial());

  final IJokesRepository _jokesRepository;

  Future<void> getJoke() async {
    state = const JokesState.loading();

    try {
      final joke = await _jokesRepository.getJoke();
      state = JokesState.data(jokes: joke);
    } catch (_) {
      state = JokesState.error('Error!');
    }
  }
}
