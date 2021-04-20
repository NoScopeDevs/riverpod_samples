import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:riverpod_jokes_basic/src/features/jokes/data/models/joke_model.dart';
import 'package:riverpod_jokes_basic/src/features/jokes/data/repositories/jokes_repository.dart';

import '../../../fixture/fixture_reader.dart';

class MockDio extends Mock implements Dio {}

main() {
  late MockDio client;

  setUp(() {
    client = MockDio();
  });

  group('JokesRepository', () {
    late JokesRepository repository;

    ///setup
    setUp(() {
      repository = JokesRepository(client: client);
    });

    group('getJoke()', () {
      test('should return JokesModel when call is successful', () async {
        //1. setup
        final tJoke = JokeModel.fromJson(json.decode(fixture('joke.json')));

        when(() => client.get(any())).thenAnswer(
          (_) async => Response(
            requestOptions: RequestOptions(
              path: '',
            ),
            statusCode: 200,
            data: json.decode(fixture('joke.json')),
          ),
        );

        //2. act
        final result = await repository.getJoke();

        //3. expect
        expect(result, equals(tJoke));
      });

      test('should throw Exception when status code is different from 200',
          () async {
        //1. setup
        when(() => client.get(any())).thenAnswer(
          (_) async => Response(
            requestOptions: RequestOptions(
              path: '',
            ),
            statusCode: 400,
            data: json.decode(fixture('joke.json')),
          ),
        );

        //2. act
        //3. expect
        expect(
          () async => await repository.getJoke(),
          throwsA(
            isA<Exception>(),
          ),
        );
      });

      test('should throw Exception when client fails', () async {
        //1. setup

        when(() => client.get(any())).thenThrow(
          Exception(),
        );

        //2. act
        //3. expect
        expect(
          () async => await repository.getJoke(),
          throwsA(
            isA<Exception>(),
          ),
        );
      });
    });
  });
}
