import 'package:dio/dio.dart';
import 'package:riverpod_jokes_basic/src/features/jokes/data/models/joke_model.dart';

abstract class IJokesRepository {
  Future<List<JokeModel>> getJoke();
}

class JokesRepository implements IJokesRepository {
  JokesRepository({required this.client});
  final url = 'https://v2.jokeapi.dev/joke/Programming?type=twopart';

  final Dio client;

  @override
  Future<List<JokeModel>> getJoke() async {
    try {
      final result = await client.get(url);
      if (result.statusCode == 200) {
        return [
          JokeModel.fromJson(result.data),
          JokeModel(safe: false, id: 1, setup: 'Setup', delivery: 'Delivery'),
        ];
      } else {
        throw Exception();
      }
    } catch (_) {
      throw Exception();
    }
  }
}
