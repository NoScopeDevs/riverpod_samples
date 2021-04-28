// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'checkout_provider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CheckoutStateTearOff {
  const _$CheckoutStateTearOff();

  _CheckoutState call(
      {EmailFormz email = const EmailFormz.pure(),
      PasswordFormz password = const PasswordFormz.pure(),
      IntFormz cableLengthIndex = const IntFormz.pure(),
      IntFormz warrantyIndex = const IntFormz.pure(),
      FormzStatus status = FormzStatus.pure}) {
    return _CheckoutState(
      email: email,
      password: password,
      cableLengthIndex: cableLengthIndex,
      warrantyIndex: warrantyIndex,
      status: status,
    );
  }
}

/// @nodoc
const $CheckoutState = _$CheckoutStateTearOff();

/// @nodoc
mixin _$CheckoutState {
  EmailFormz get email => throw _privateConstructorUsedError;
  PasswordFormz get password => throw _privateConstructorUsedError;
  IntFormz get cableLengthIndex => throw _privateConstructorUsedError;
  IntFormz get warrantyIndex => throw _privateConstructorUsedError;
  FormzStatus get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CheckoutStateCopyWith<CheckoutState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckoutStateCopyWith<$Res> {
  factory $CheckoutStateCopyWith(
          CheckoutState value, $Res Function(CheckoutState) then) =
      _$CheckoutStateCopyWithImpl<$Res>;
  $Res call(
      {EmailFormz email,
      PasswordFormz password,
      IntFormz cableLengthIndex,
      IntFormz warrantyIndex,
      FormzStatus status});
}

/// @nodoc
class _$CheckoutStateCopyWithImpl<$Res>
    implements $CheckoutStateCopyWith<$Res> {
  _$CheckoutStateCopyWithImpl(this._value, this._then);

  final CheckoutState _value;
  // ignore: unused_field
  final $Res Function(CheckoutState) _then;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
    Object? cableLengthIndex = freezed,
    Object? warrantyIndex = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as EmailFormz,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as PasswordFormz,
      cableLengthIndex: cableLengthIndex == freezed
          ? _value.cableLengthIndex
          : cableLengthIndex // ignore: cast_nullable_to_non_nullable
              as IntFormz,
      warrantyIndex: warrantyIndex == freezed
          ? _value.warrantyIndex
          : warrantyIndex // ignore: cast_nullable_to_non_nullable
              as IntFormz,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzStatus,
    ));
  }
}

/// @nodoc
abstract class _$CheckoutStateCopyWith<$Res>
    implements $CheckoutStateCopyWith<$Res> {
  factory _$CheckoutStateCopyWith(
          _CheckoutState value, $Res Function(_CheckoutState) then) =
      __$CheckoutStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {EmailFormz email,
      PasswordFormz password,
      IntFormz cableLengthIndex,
      IntFormz warrantyIndex,
      FormzStatus status});
}

/// @nodoc
class __$CheckoutStateCopyWithImpl<$Res>
    extends _$CheckoutStateCopyWithImpl<$Res>
    implements _$CheckoutStateCopyWith<$Res> {
  __$CheckoutStateCopyWithImpl(
      _CheckoutState _value, $Res Function(_CheckoutState) _then)
      : super(_value, (v) => _then(v as _CheckoutState));

  @override
  _CheckoutState get _value => super._value as _CheckoutState;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
    Object? cableLengthIndex = freezed,
    Object? warrantyIndex = freezed,
    Object? status = freezed,
  }) {
    return _then(_CheckoutState(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as EmailFormz,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as PasswordFormz,
      cableLengthIndex: cableLengthIndex == freezed
          ? _value.cableLengthIndex
          : cableLengthIndex // ignore: cast_nullable_to_non_nullable
              as IntFormz,
      warrantyIndex: warrantyIndex == freezed
          ? _value.warrantyIndex
          : warrantyIndex // ignore: cast_nullable_to_non_nullable
              as IntFormz,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzStatus,
    ));
  }
}

/// @nodoc
class _$_CheckoutState implements _CheckoutState {
  const _$_CheckoutState(
      {this.email = const EmailFormz.pure(),
      this.password = const PasswordFormz.pure(),
      this.cableLengthIndex = const IntFormz.pure(),
      this.warrantyIndex = const IntFormz.pure(),
      this.status = FormzStatus.pure});

  @JsonKey(defaultValue: const EmailFormz.pure())
  @override
  final EmailFormz email;
  @JsonKey(defaultValue: const PasswordFormz.pure())
  @override
  final PasswordFormz password;
  @JsonKey(defaultValue: const IntFormz.pure())
  @override
  final IntFormz cableLengthIndex;
  @JsonKey(defaultValue: const IntFormz.pure())
  @override
  final IntFormz warrantyIndex;
  @JsonKey(defaultValue: FormzStatus.pure)
  @override
  final FormzStatus status;

  @override
  String toString() {
    return 'CheckoutState(email: $email, password: $password, cableLengthIndex: $cableLengthIndex, warrantyIndex: $warrantyIndex, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CheckoutState &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.cableLengthIndex, cableLengthIndex) ||
                const DeepCollectionEquality()
                    .equals(other.cableLengthIndex, cableLengthIndex)) &&
            (identical(other.warrantyIndex, warrantyIndex) ||
                const DeepCollectionEquality()
                    .equals(other.warrantyIndex, warrantyIndex)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(cableLengthIndex) ^
      const DeepCollectionEquality().hash(warrantyIndex) ^
      const DeepCollectionEquality().hash(status);

  @JsonKey(ignore: true)
  @override
  _$CheckoutStateCopyWith<_CheckoutState> get copyWith =>
      __$CheckoutStateCopyWithImpl<_CheckoutState>(this, _$identity);
}

abstract class _CheckoutState implements CheckoutState {
  const factory _CheckoutState(
      {EmailFormz email,
      PasswordFormz password,
      IntFormz cableLengthIndex,
      IntFormz warrantyIndex,
      FormzStatus status}) = _$_CheckoutState;

  @override
  EmailFormz get email => throw _privateConstructorUsedError;
  @override
  PasswordFormz get password => throw _privateConstructorUsedError;
  @override
  IntFormz get cableLengthIndex => throw _privateConstructorUsedError;
  @override
  IntFormz get warrantyIndex => throw _privateConstructorUsedError;
  @override
  FormzStatus get status => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CheckoutStateCopyWith<_CheckoutState> get copyWith =>
      throw _privateConstructorUsedError;
}
