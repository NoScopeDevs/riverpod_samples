import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:riverpod_jokes_basic/src/features/jokes/data/models/joke_model.dart';
import 'package:riverpod_jokes_basic/src/features/jokes/data/repositories/jokes_repository.dart';
import 'package:riverpod_jokes_basic/src/features/jokes/logic/jokes_provider.dart';

import '../../../fixture/fixture_reader.dart';

class MockJokesRepository extends Mock implements IJokesRepository {}

void main() {
  group('JokeStateNotifier', () {
    late IJokesRepository repository;
    late JokesNotifier jokesNotifier;

    setUp(() {
      repository = MockJokesRepository();
      jokesNotifier = JokesNotifier(jokesRepository: repository);
    });

    /// For testing
    final tJokeModel = JokeModel.fromJson(json.decode(fixture('joke.json')));

    test('first state is JokesState.initial', () {
      expect(jokesNotifier.debugState, JokesState.initial());
    });

    group('getJoke()', () {
      test(
        'emits JokesState.loading and JokesState.data on successfull repository call',
        () async {
          //1. Setup
          when(() => repository.getJoke()).thenAnswer(
            (_) async => tJokeModel,
          );

          final states = <JokesState>[];
          jokesNotifier.addListener((state) {
            states.add(state);
          });

          //2. Act
          await jokesNotifier.getJoke();

          //3. Expect
          expect(states, [
            const JokesState.initial(),
            const JokesState.loading(),
            JokesState.data(jokes: tJokeModel),
          ]);
        },
      );

      test(
        'emits JokesState.loading and JokesState.error on error repository call',
        () async {
          //1. Setup
          when(() => repository.getJoke()).thenThrow(
            Exception(),
          );

          final states = <JokesState>[];
          jokesNotifier.addListener((state) {
            states.add(state);
          });

          //2. Act
          await jokesNotifier.getJoke();

          //3. Expect
          expect(states, [
            const JokesState.initial(),
            const JokesState.loading(),
            JokesState.error('Error!'),
          ]);
        },
      );
    });
  });
}
