import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_jokes_basic/src/features/jokes/data/repositories/jokes_repository.dart';
import 'jokes_state.dart';
export 'jokes_state.dart';

part 'jokes_state_notifier.dart';

///Dependency Injection

//* Logic / StateNotifier
final jokesNotifierProvider = StateNotifierProvider<JokesNotifier, JokesState>(
  (ref) => JokesNotifier(
    jokesRepository: ref.watch(_jokesRepositoryProvider),
  ),
);

//* Repository
final _jokesRepositoryProvider = Provider<IJokesRepository>(
  (ref) => JokesRepository(
    client: Dio(),
  ),
);
