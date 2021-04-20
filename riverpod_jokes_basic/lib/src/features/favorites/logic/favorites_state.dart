part of 'favorites_provider.dart';

extension FavoriteStateComparison on FavoriteState {
  bool get isInitial => this is _FavoriteStateInitial;
  bool get isSuccess => this is _FavoriteStateSuccess;
  bool get isError => this is _FavoriteStateError;
}

@freezed
abstract class FavoriteState with _$FavoriteState {
  ///Initial
  const factory FavoriteState.initial() = _FavoriteStateInitial;

  ///Loading
  const factory FavoriteState.success(JokeModel joke) = _FavoriteStateSuccess;

  ///Error
  const factory FavoriteState.error(JokeModel joke) = _FavoriteStateError;
}
