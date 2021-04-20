// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'favorites_provider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FavoriteStateTearOff {
  const _$FavoriteStateTearOff();

  _FavoriteStateInitial initial() {
    return const _FavoriteStateInitial();
  }

  _FavoriteStateSuccess success(JokeModel joke) {
    return _FavoriteStateSuccess(
      joke,
    );
  }

  _FavoriteStateError error(JokeModel joke) {
    return _FavoriteStateError(
      joke,
    );
  }
}

/// @nodoc
const $FavoriteState = _$FavoriteStateTearOff();

/// @nodoc
mixin _$FavoriteState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(JokeModel joke) success,
    required TResult Function(JokeModel joke) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(JokeModel joke)? success,
    TResult Function(JokeModel joke)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FavoriteStateInitial value) initial,
    required TResult Function(_FavoriteStateSuccess value) success,
    required TResult Function(_FavoriteStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FavoriteStateInitial value)? initial,
    TResult Function(_FavoriteStateSuccess value)? success,
    TResult Function(_FavoriteStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoriteStateCopyWith<$Res> {
  factory $FavoriteStateCopyWith(
          FavoriteState value, $Res Function(FavoriteState) then) =
      _$FavoriteStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$FavoriteStateCopyWithImpl<$Res>
    implements $FavoriteStateCopyWith<$Res> {
  _$FavoriteStateCopyWithImpl(this._value, this._then);

  final FavoriteState _value;
  // ignore: unused_field
  final $Res Function(FavoriteState) _then;
}

/// @nodoc
abstract class _$FavoriteStateInitialCopyWith<$Res> {
  factory _$FavoriteStateInitialCopyWith(_FavoriteStateInitial value,
          $Res Function(_FavoriteStateInitial) then) =
      __$FavoriteStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$FavoriteStateInitialCopyWithImpl<$Res>
    extends _$FavoriteStateCopyWithImpl<$Res>
    implements _$FavoriteStateInitialCopyWith<$Res> {
  __$FavoriteStateInitialCopyWithImpl(
      _FavoriteStateInitial _value, $Res Function(_FavoriteStateInitial) _then)
      : super(_value, (v) => _then(v as _FavoriteStateInitial));

  @override
  _FavoriteStateInitial get _value => super._value as _FavoriteStateInitial;
}

/// @nodoc
class _$_FavoriteStateInitial implements _FavoriteStateInitial {
  const _$_FavoriteStateInitial();

  @override
  String toString() {
    return 'FavoriteState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _FavoriteStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(JokeModel joke) success,
    required TResult Function(JokeModel joke) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(JokeModel joke)? success,
    TResult Function(JokeModel joke)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FavoriteStateInitial value) initial,
    required TResult Function(_FavoriteStateSuccess value) success,
    required TResult Function(_FavoriteStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FavoriteStateInitial value)? initial,
    TResult Function(_FavoriteStateSuccess value)? success,
    TResult Function(_FavoriteStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _FavoriteStateInitial implements FavoriteState {
  const factory _FavoriteStateInitial() = _$_FavoriteStateInitial;
}

/// @nodoc
abstract class _$FavoriteStateSuccessCopyWith<$Res> {
  factory _$FavoriteStateSuccessCopyWith(_FavoriteStateSuccess value,
          $Res Function(_FavoriteStateSuccess) then) =
      __$FavoriteStateSuccessCopyWithImpl<$Res>;
  $Res call({JokeModel joke});
}

/// @nodoc
class __$FavoriteStateSuccessCopyWithImpl<$Res>
    extends _$FavoriteStateCopyWithImpl<$Res>
    implements _$FavoriteStateSuccessCopyWith<$Res> {
  __$FavoriteStateSuccessCopyWithImpl(
      _FavoriteStateSuccess _value, $Res Function(_FavoriteStateSuccess) _then)
      : super(_value, (v) => _then(v as _FavoriteStateSuccess));

  @override
  _FavoriteStateSuccess get _value => super._value as _FavoriteStateSuccess;

  @override
  $Res call({
    Object? joke = freezed,
  }) {
    return _then(_FavoriteStateSuccess(
      joke == freezed
          ? _value.joke
          : joke // ignore: cast_nullable_to_non_nullable
              as JokeModel,
    ));
  }
}

/// @nodoc
class _$_FavoriteStateSuccess implements _FavoriteStateSuccess {
  const _$_FavoriteStateSuccess(this.joke);

  @override
  final JokeModel joke;

  @override
  String toString() {
    return 'FavoriteState.success(joke: $joke)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FavoriteStateSuccess &&
            (identical(other.joke, joke) ||
                const DeepCollectionEquality().equals(other.joke, joke)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(joke);

  @JsonKey(ignore: true)
  @override
  _$FavoriteStateSuccessCopyWith<_FavoriteStateSuccess> get copyWith =>
      __$FavoriteStateSuccessCopyWithImpl<_FavoriteStateSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(JokeModel joke) success,
    required TResult Function(JokeModel joke) error,
  }) {
    return success(joke);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(JokeModel joke)? success,
    TResult Function(JokeModel joke)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(joke);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FavoriteStateInitial value) initial,
    required TResult Function(_FavoriteStateSuccess value) success,
    required TResult Function(_FavoriteStateError value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FavoriteStateInitial value)? initial,
    TResult Function(_FavoriteStateSuccess value)? success,
    TResult Function(_FavoriteStateError value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _FavoriteStateSuccess implements FavoriteState {
  const factory _FavoriteStateSuccess(JokeModel joke) = _$_FavoriteStateSuccess;

  JokeModel get joke => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$FavoriteStateSuccessCopyWith<_FavoriteStateSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$FavoriteStateErrorCopyWith<$Res> {
  factory _$FavoriteStateErrorCopyWith(
          _FavoriteStateError value, $Res Function(_FavoriteStateError) then) =
      __$FavoriteStateErrorCopyWithImpl<$Res>;
  $Res call({JokeModel joke});
}

/// @nodoc
class __$FavoriteStateErrorCopyWithImpl<$Res>
    extends _$FavoriteStateCopyWithImpl<$Res>
    implements _$FavoriteStateErrorCopyWith<$Res> {
  __$FavoriteStateErrorCopyWithImpl(
      _FavoriteStateError _value, $Res Function(_FavoriteStateError) _then)
      : super(_value, (v) => _then(v as _FavoriteStateError));

  @override
  _FavoriteStateError get _value => super._value as _FavoriteStateError;

  @override
  $Res call({
    Object? joke = freezed,
  }) {
    return _then(_FavoriteStateError(
      joke == freezed
          ? _value.joke
          : joke // ignore: cast_nullable_to_non_nullable
              as JokeModel,
    ));
  }
}

/// @nodoc
class _$_FavoriteStateError implements _FavoriteStateError {
  const _$_FavoriteStateError(this.joke);

  @override
  final JokeModel joke;

  @override
  String toString() {
    return 'FavoriteState.error(joke: $joke)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FavoriteStateError &&
            (identical(other.joke, joke) ||
                const DeepCollectionEquality().equals(other.joke, joke)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(joke);

  @JsonKey(ignore: true)
  @override
  _$FavoriteStateErrorCopyWith<_FavoriteStateError> get copyWith =>
      __$FavoriteStateErrorCopyWithImpl<_FavoriteStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(JokeModel joke) success,
    required TResult Function(JokeModel joke) error,
  }) {
    return error(joke);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(JokeModel joke)? success,
    TResult Function(JokeModel joke)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(joke);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FavoriteStateInitial value) initial,
    required TResult Function(_FavoriteStateSuccess value) success,
    required TResult Function(_FavoriteStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FavoriteStateInitial value)? initial,
    TResult Function(_FavoriteStateSuccess value)? success,
    TResult Function(_FavoriteStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _FavoriteStateError implements FavoriteState {
  const factory _FavoriteStateError(JokeModel joke) = _$_FavoriteStateError;

  JokeModel get joke => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$FavoriteStateErrorCopyWith<_FavoriteStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
