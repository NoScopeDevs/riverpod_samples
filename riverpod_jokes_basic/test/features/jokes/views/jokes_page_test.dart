import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:mocktail/mocktail.dart';
import 'package:riverpod_jokes_basic/src/app.dart';
import 'package:riverpod_jokes_basic/src/features/jokes/data/models/joke_model.dart';
import 'package:riverpod_jokes_basic/src/features/jokes/data/repositories/jokes_repository.dart';
import 'package:riverpod_jokes_basic/src/features/jokes/logic/jokes_provider.dart';
import 'package:riverpod_jokes_basic/src/features/jokes/views/jokes_page.dart';

import '../../../fixture/fixture_reader.dart';

class MockJokesRepository extends Mock implements IJokesRepository {}

void main() {
  //Finders
  final initialText = find.byKey(kInitialTextKey);
  final loadingIndicator = find.byKey(kLoadingIndicatorKey);
  final dataText = find.byKey(kDataTextKey);
  final errorText = find.byKey(kErrorTextKey);
  final getJokeButton = find.byKey(kGetJokeButtonKey);

  group('JokesPage', () {
    late IJokesRepository jokesRepository;

    setUp(() {
      jokesRepository = MockJokesRepository();
    });

    final tJoke = JokeModel.fromJson(json.decode(fixture('joke.json')));

    //Simplify override function
    StateNotifierProvider<JokesNotifier, JokesState> overrideNotifier(
      JokesState initialState,
    ) =>
        StateNotifierProvider<JokesNotifier, JokesState>(
          (_) => JokesNotifier(
            jokesRepository: jokesRepository,
            initialState: initialState,
          ),
        );

    test('has a route', () {
      expect(JokesPage.route(), isA<MaterialPageRoute>());
    });
    testWidgets('Render default page', (tester) async {
      // Setup
      await tester.pumpWidget(ProviderScope(child: RiverpodJokesApp()));
      //Expect
      expect(find.byType(JokesPage), findsOneWidget);
    });

    testWidgets('Initial text on JokesState.initial', (tester) async {
      ///act
      await tester.pumpWidget(
        ProviderScope(
          child: RiverpodJokesApp(),
        ),
      );

      //expect
      expect(initialText, findsOneWidget);
    });

    testWidgets('Loading Indicator when JokesState.loading', (tester) async {
      ///act
      await tester.pumpWidget(
        ProviderScope(
          overrides: [
            jokesNotifierProvider.overrideWithProvider(
              overrideNotifier(
                const JokesState.loading(),
              ),
            ),
          ],
          child: RiverpodJokesApp(),
        ),
      );

      //Validate initial state
      expect(loadingIndicator, findsOneWidget);
    });

    testWidgets('Data text when JokesState.data', (tester) async {
      ///act
      await tester.pumpWidget(
        ProviderScope(
          overrides: [
            jokesNotifierProvider.overrideWithProvider(
              overrideNotifier(
                JokesState.data(jokes: tJoke),
              ),
            ),
          ],
          child: RiverpodJokesApp(),
        ),
      );

      //Validate initial state
      expect(dataText, findsOneWidget);
    });

    testWidgets('Error text when JokesState.error', (tester) async {
      ///act
      await tester.pumpWidget(
        ProviderScope(
          overrides: [
            jokesNotifierProvider.overrideWithProvider(
              overrideNotifier(
                const JokesState.error(),
              ),
            ),
          ],
          child: RiverpodJokesApp(),
        ),
      );

      //Validate initial state
      expect(errorText, findsOneWidget);
    });

    testWidgets('Press button to get a joke', (tester) async {
      //Setup
      when(() => jokesRepository.getJoke()).thenAnswer(
        (_) async => tJoke,
      );

      await tester.pumpWidget(
        ProviderScope(
          child: RiverpodJokesApp(),
          overrides: [
            jokesNotifierProvider.overrideWithProvider(
              overrideNotifier(JokesState.initial()),
            ),
          ],
        ),
      );

      //Validate initial state
      expect(initialText, findsOneWidget);
      expect(getJokeButton, findsOneWidget);

      ///Act
      await tester.tap(getJokeButton);
      await tester.pump();

      ///Validate new joke
      expect(initialText, findsNothing);
      expect(dataText, findsOneWidget);
    });
  });
}
