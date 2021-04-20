import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_jokes_basic/src/features/jokes/data/models/joke_model.dart';

part 'jokes_state.freezed.dart';

///Extension Method for easy comparison
extension JokesGetters on JokesState {
  bool get isLoading => this is _JokesStateLoading;
}

@freezed
abstract class JokesState with _$JokesState {
  ///Initial
  const factory JokesState.initial() = _JokesStateInitial;

  ///Loading
  const factory JokesState.loading() = _JokesStateLoading;

  ///Data
  const factory JokesState.data({required List<JokeModel> jokes}) =
      _JokesStateData;

  ///Error
  const factory JokesState.error([String? error]) = _JokesStateError;
}
