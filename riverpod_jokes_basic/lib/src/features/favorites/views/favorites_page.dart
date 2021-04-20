import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_jokes_basic/src/features/favorites/logic/favorites_provider.dart';

///FavaoritesPage
class FavoritesPage extends StatelessWidget {
  ///FavaoritesPage constructor
  const FavoritesPage({Key? key}) : super(key: key);

  ///FavaoritesPage [routeName]
  static const routeName = 'FavaoritesPage';

  ///Router for FavaoritesPage
  static Route route() {
    return MaterialPageRoute<void>(builder: (_) => const FavoritesPage());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Expanded(
            child: Consumer(
              builder: (context, watch, child) {
                final favorites = watch(favoriteListProvider);
                return ListView.builder(
                  itemCount: favorites.state.length,
                  itemBuilder: (context, index) {
                    final joke = favorites.state[index];
                    return Card(
                      child: ListTile(
                        title: Text(joke.setup!),
                        subtitle: Text(joke.delivery!),
                        trailing: Text(index.toString()),
                        onTap: () {
                          context
                              .read(favoritesProvider.notifier)
                              .toggleLike(joke);
                        },
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
