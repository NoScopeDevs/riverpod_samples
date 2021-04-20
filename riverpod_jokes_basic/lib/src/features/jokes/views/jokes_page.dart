import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_jokes_basic/src/features/favorites/logic/favorites_provider.dart';
import 'package:riverpod_jokes_basic/src/features/jokes/data/models/joke_model.dart';
import 'package:riverpod_jokes_basic/src/features/jokes/logic/jokes_provider.dart';
import 'package:riverpod_jokes_basic/src/features/favorites/views/favorites_page.dart';

part 'jokes_page_widgets.dart';

//* Keys for testing
final kInitialTextKey = UniqueKey();
final kLoadingIndicatorKey = UniqueKey();
final kDataTextKey = UniqueKey();
final kErrorTextKey = UniqueKey();

final kGetJokeButtonKey = UniqueKey();

///JokesPage
class JokesPage extends StatelessWidget {
  ///JokesPage constructor
  const JokesPage({Key? key}) : super(key: key);

  ///JokesPage [routeName]
  static const routeName = 'JokesPage';

  ///Router for JokesPage
  static Route route() {
    return MaterialPageRoute<void>(builder: (_) => const JokesPage());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Riverpod Jokes'),
        actions: [
          IconButton(
            icon: Icon(Icons.favorite),
            onPressed: () {
              Navigator.push(context, FavoritesPage.route());
            },
          ),
        ],
      ),
      body: _FavoriteStateListener(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              _JokeConsumer(),
              const SizedBox(height: 50),
              _ButtonConsumer(),
            ],
          ),
        ),
      ),
    );
  }
}
