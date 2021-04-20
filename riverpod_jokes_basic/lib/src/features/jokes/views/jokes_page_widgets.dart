part of 'jokes_page.dart';

class _FavoriteStateListener extends StatelessWidget {
  const _FavoriteStateListener({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;
  @override
  Widget build(BuildContext context) {
    return ProviderListener(
      provider: favoritesProvider,
      onChange: (context, state) {
        var message = '';
        if (state is FavoriteState) {
          state.maybeWhen(
            success: (joke) => message = '${joke.id} updated successfully',
            error: (joke) => message = '${joke.id} error occurred',
            orElse: () {},
          );
          if (state.isInitial) return;
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(message),
            ),
          );
        }
      },
      child: child,
    );
  }
}

class _JokeConsumer extends ConsumerWidget {
  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final state = watch(jokesNotifierProvider);

    return state.when(
      initial: () => Text(
        'Press the button to start',
        key: kInitialTextKey,
        textAlign: TextAlign.center,
      ),
      loading: () => Center(
        child: CircularProgressIndicator(
          key: kLoadingIndicatorKey,
        ),
      ),
      data: (jokes) => Expanded(child: _JokeListConsumer(jokes: jokes)),
      error: (error) => Text(
        'Error Occured!',
        key: kErrorTextKey,
      ),
    );
  }
}

class _JokeListConsumer extends ConsumerWidget {
  _JokeListConsumer({
    required this.jokes,
  });
  final List<JokeModel> jokes;

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    return ListView.builder(
      itemCount: jokes.length,
      itemBuilder: (context, index) {
        final joke = jokes[index];
        final favorites = watch(favoriteListProvider);
        final loadingJokes = watch(loadingJokesProvider);

        return Card(
          child: ListTile(
            title: Text(joke.setup!),
            leading: Text(joke.id.toString()),
            subtitle: Text(joke.delivery!),
            trailing: loadingJokes.state.contains(joke)
                ? CircularProgressIndicator()
                : IconButton(
                    icon: Icon(
                      Icons.favorite,
                      color: favorites.state.contains(joke)
                          ? Colors.red
                          : Colors.grey,
                    ),
                    onPressed: () {
                      context.read(favoritesProvider.notifier).toggleLike(joke);
                    },
                  ),
          ),
        );
      },
    );
  }
}

class _ButtonConsumer extends ConsumerWidget {
  @override
  Widget build(BuildContext context, ScopedReader watch) {
    print('_ButtonConsumer');
    final state = watch(jokesNotifierProvider);
    return ElevatedButton(
      key: kGetJokeButtonKey,
      child: Text('Press me to get a joke'),
      onPressed: !state.isLoading
          ? () {
              context.read(jokesNotifierProvider.notifier).getJoke();
            }
          : null,
    );
  }
}
