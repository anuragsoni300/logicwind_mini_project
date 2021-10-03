// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'sign_in_from_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SignInFromEventTearOff {
  const _$SignInFromEventTearOff();

  _EmailChanged emailChanged(String emailStr) {
    return _EmailChanged(
      emailStr,
    );
  }

  _PasswordChanged passwordChanged(String password) {
    return _PasswordChanged(
      password,
    );
  }

  _RegisterWithEmailandPassword registerWithEmailandPressed() {
    return const _RegisterWithEmailandPassword();
  }

  _SignInWithEmailandPassword signInWithEmailandPressed() {
    return const _SignInWithEmailandPassword();
  }

  _SignInWithGooglePressed signInWithGooglePressed() {
    return const _SignInWithGooglePressed();
  }
}

/// @nodoc
const $SignInFromEvent = _$SignInFromEventTearOff();

/// @nodoc
mixin _$SignInFromEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function() registerWithEmailandPressed,
    required TResult Function() signInWithEmailandPressed,
    required TResult Function() signInWithGooglePressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function()? registerWithEmailandPressed,
    TResult Function()? signInWithEmailandPressed,
    TResult Function()? signInWithGooglePressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function()? registerWithEmailandPressed,
    TResult Function()? signInWithEmailandPressed,
    TResult Function()? signInWithGooglePressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_RegisterWithEmailandPassword value)
        registerWithEmailandPressed,
    required TResult Function(_SignInWithEmailandPassword value)
        signInWithEmailandPressed,
    required TResult Function(_SignInWithGooglePressed value)
        signInWithGooglePressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_RegisterWithEmailandPassword value)?
        registerWithEmailandPressed,
    TResult Function(_SignInWithEmailandPassword value)?
        signInWithEmailandPressed,
    TResult Function(_SignInWithGooglePressed value)? signInWithGooglePressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_RegisterWithEmailandPassword value)?
        registerWithEmailandPressed,
    TResult Function(_SignInWithEmailandPassword value)?
        signInWithEmailandPressed,
    TResult Function(_SignInWithGooglePressed value)? signInWithGooglePressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInFromEventCopyWith<$Res> {
  factory $SignInFromEventCopyWith(
          SignInFromEvent value, $Res Function(SignInFromEvent) then) =
      _$SignInFromEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignInFromEventCopyWithImpl<$Res>
    implements $SignInFromEventCopyWith<$Res> {
  _$SignInFromEventCopyWithImpl(this._value, this._then);

  final SignInFromEvent _value;
  // ignore: unused_field
  final $Res Function(SignInFromEvent) _then;
}

/// @nodoc
abstract class _$EmailChangedCopyWith<$Res> {
  factory _$EmailChangedCopyWith(
          _EmailChanged value, $Res Function(_EmailChanged) then) =
      __$EmailChangedCopyWithImpl<$Res>;
  $Res call({String emailStr});
}

/// @nodoc
class __$EmailChangedCopyWithImpl<$Res>
    extends _$SignInFromEventCopyWithImpl<$Res>
    implements _$EmailChangedCopyWith<$Res> {
  __$EmailChangedCopyWithImpl(
      _EmailChanged _value, $Res Function(_EmailChanged) _then)
      : super(_value, (v) => _then(v as _EmailChanged));

  @override
  _EmailChanged get _value => super._value as _EmailChanged;

  @override
  $Res call({
    Object? emailStr = freezed,
  }) {
    return _then(_EmailChanged(
      emailStr == freezed
          ? _value.emailStr
          : emailStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_EmailChanged implements _EmailChanged {
  const _$_EmailChanged(this.emailStr);

  @override
  final String emailStr;

  @override
  String toString() {
    return 'SignInFromEvent.emailChanged(emailStr: $emailStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EmailChanged &&
            (identical(other.emailStr, emailStr) ||
                const DeepCollectionEquality()
                    .equals(other.emailStr, emailStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(emailStr);

  @JsonKey(ignore: true)
  @override
  _$EmailChangedCopyWith<_EmailChanged> get copyWith =>
      __$EmailChangedCopyWithImpl<_EmailChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function() registerWithEmailandPressed,
    required TResult Function() signInWithEmailandPressed,
    required TResult Function() signInWithGooglePressed,
  }) {
    return emailChanged(emailStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function()? registerWithEmailandPressed,
    TResult Function()? signInWithEmailandPressed,
    TResult Function()? signInWithGooglePressed,
  }) {
    return emailChanged?.call(emailStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function()? registerWithEmailandPressed,
    TResult Function()? signInWithEmailandPressed,
    TResult Function()? signInWithGooglePressed,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(emailStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_RegisterWithEmailandPassword value)
        registerWithEmailandPressed,
    required TResult Function(_SignInWithEmailandPassword value)
        signInWithEmailandPressed,
    required TResult Function(_SignInWithGooglePressed value)
        signInWithGooglePressed,
  }) {
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_RegisterWithEmailandPassword value)?
        registerWithEmailandPressed,
    TResult Function(_SignInWithEmailandPassword value)?
        signInWithEmailandPressed,
    TResult Function(_SignInWithGooglePressed value)? signInWithGooglePressed,
  }) {
    return emailChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_RegisterWithEmailandPassword value)?
        registerWithEmailandPressed,
    TResult Function(_SignInWithEmailandPassword value)?
        signInWithEmailandPressed,
    TResult Function(_SignInWithGooglePressed value)? signInWithGooglePressed,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class _EmailChanged implements SignInFromEvent {
  const factory _EmailChanged(String emailStr) = _$_EmailChanged;

  String get emailStr => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$EmailChangedCopyWith<_EmailChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$PasswordChangedCopyWith<$Res> {
  factory _$PasswordChangedCopyWith(
          _PasswordChanged value, $Res Function(_PasswordChanged) then) =
      __$PasswordChangedCopyWithImpl<$Res>;
  $Res call({String password});
}

/// @nodoc
class __$PasswordChangedCopyWithImpl<$Res>
    extends _$SignInFromEventCopyWithImpl<$Res>
    implements _$PasswordChangedCopyWith<$Res> {
  __$PasswordChangedCopyWithImpl(
      _PasswordChanged _value, $Res Function(_PasswordChanged) _then)
      : super(_value, (v) => _then(v as _PasswordChanged));

  @override
  _PasswordChanged get _value => super._value as _PasswordChanged;

  @override
  $Res call({
    Object? password = freezed,
  }) {
    return _then(_PasswordChanged(
      password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PasswordChanged implements _PasswordChanged {
  const _$_PasswordChanged(this.password);

  @override
  final String password;

  @override
  String toString() {
    return 'SignInFromEvent.passwordChanged(password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PasswordChanged &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(password);

  @JsonKey(ignore: true)
  @override
  _$PasswordChangedCopyWith<_PasswordChanged> get copyWith =>
      __$PasswordChangedCopyWithImpl<_PasswordChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function() registerWithEmailandPressed,
    required TResult Function() signInWithEmailandPressed,
    required TResult Function() signInWithGooglePressed,
  }) {
    return passwordChanged(password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function()? registerWithEmailandPressed,
    TResult Function()? signInWithEmailandPressed,
    TResult Function()? signInWithGooglePressed,
  }) {
    return passwordChanged?.call(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function()? registerWithEmailandPressed,
    TResult Function()? signInWithEmailandPressed,
    TResult Function()? signInWithGooglePressed,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_RegisterWithEmailandPassword value)
        registerWithEmailandPressed,
    required TResult Function(_SignInWithEmailandPassword value)
        signInWithEmailandPressed,
    required TResult Function(_SignInWithGooglePressed value)
        signInWithGooglePressed,
  }) {
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_RegisterWithEmailandPassword value)?
        registerWithEmailandPressed,
    TResult Function(_SignInWithEmailandPassword value)?
        signInWithEmailandPressed,
    TResult Function(_SignInWithGooglePressed value)? signInWithGooglePressed,
  }) {
    return passwordChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_RegisterWithEmailandPassword value)?
        registerWithEmailandPressed,
    TResult Function(_SignInWithEmailandPassword value)?
        signInWithEmailandPressed,
    TResult Function(_SignInWithGooglePressed value)? signInWithGooglePressed,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class _PasswordChanged implements SignInFromEvent {
  const factory _PasswordChanged(String password) = _$_PasswordChanged;

  String get password => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$PasswordChangedCopyWith<_PasswordChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$RegisterWithEmailandPasswordCopyWith<$Res> {
  factory _$RegisterWithEmailandPasswordCopyWith(
          _RegisterWithEmailandPassword value,
          $Res Function(_RegisterWithEmailandPassword) then) =
      __$RegisterWithEmailandPasswordCopyWithImpl<$Res>;
}

/// @nodoc
class __$RegisterWithEmailandPasswordCopyWithImpl<$Res>
    extends _$SignInFromEventCopyWithImpl<$Res>
    implements _$RegisterWithEmailandPasswordCopyWith<$Res> {
  __$RegisterWithEmailandPasswordCopyWithImpl(
      _RegisterWithEmailandPassword _value,
      $Res Function(_RegisterWithEmailandPassword) _then)
      : super(_value, (v) => _then(v as _RegisterWithEmailandPassword));

  @override
  _RegisterWithEmailandPassword get _value =>
      super._value as _RegisterWithEmailandPassword;
}

/// @nodoc

class _$_RegisterWithEmailandPassword implements _RegisterWithEmailandPassword {
  const _$_RegisterWithEmailandPassword();

  @override
  String toString() {
    return 'SignInFromEvent.registerWithEmailandPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _RegisterWithEmailandPassword);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function() registerWithEmailandPressed,
    required TResult Function() signInWithEmailandPressed,
    required TResult Function() signInWithGooglePressed,
  }) {
    return registerWithEmailandPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function()? registerWithEmailandPressed,
    TResult Function()? signInWithEmailandPressed,
    TResult Function()? signInWithGooglePressed,
  }) {
    return registerWithEmailandPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function()? registerWithEmailandPressed,
    TResult Function()? signInWithEmailandPressed,
    TResult Function()? signInWithGooglePressed,
    required TResult orElse(),
  }) {
    if (registerWithEmailandPressed != null) {
      return registerWithEmailandPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_RegisterWithEmailandPassword value)
        registerWithEmailandPressed,
    required TResult Function(_SignInWithEmailandPassword value)
        signInWithEmailandPressed,
    required TResult Function(_SignInWithGooglePressed value)
        signInWithGooglePressed,
  }) {
    return registerWithEmailandPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_RegisterWithEmailandPassword value)?
        registerWithEmailandPressed,
    TResult Function(_SignInWithEmailandPassword value)?
        signInWithEmailandPressed,
    TResult Function(_SignInWithGooglePressed value)? signInWithGooglePressed,
  }) {
    return registerWithEmailandPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_RegisterWithEmailandPassword value)?
        registerWithEmailandPressed,
    TResult Function(_SignInWithEmailandPassword value)?
        signInWithEmailandPressed,
    TResult Function(_SignInWithGooglePressed value)? signInWithGooglePressed,
    required TResult orElse(),
  }) {
    if (registerWithEmailandPressed != null) {
      return registerWithEmailandPressed(this);
    }
    return orElse();
  }
}

abstract class _RegisterWithEmailandPassword implements SignInFromEvent {
  const factory _RegisterWithEmailandPassword() =
      _$_RegisterWithEmailandPassword;
}

/// @nodoc
abstract class _$SignInWithEmailandPasswordCopyWith<$Res> {
  factory _$SignInWithEmailandPasswordCopyWith(
          _SignInWithEmailandPassword value,
          $Res Function(_SignInWithEmailandPassword) then) =
      __$SignInWithEmailandPasswordCopyWithImpl<$Res>;
}

/// @nodoc
class __$SignInWithEmailandPasswordCopyWithImpl<$Res>
    extends _$SignInFromEventCopyWithImpl<$Res>
    implements _$SignInWithEmailandPasswordCopyWith<$Res> {
  __$SignInWithEmailandPasswordCopyWithImpl(_SignInWithEmailandPassword _value,
      $Res Function(_SignInWithEmailandPassword) _then)
      : super(_value, (v) => _then(v as _SignInWithEmailandPassword));

  @override
  _SignInWithEmailandPassword get _value =>
      super._value as _SignInWithEmailandPassword;
}

/// @nodoc

class _$_SignInWithEmailandPassword implements _SignInWithEmailandPassword {
  const _$_SignInWithEmailandPassword();

  @override
  String toString() {
    return 'SignInFromEvent.signInWithEmailandPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _SignInWithEmailandPassword);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function() registerWithEmailandPressed,
    required TResult Function() signInWithEmailandPressed,
    required TResult Function() signInWithGooglePressed,
  }) {
    return signInWithEmailandPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function()? registerWithEmailandPressed,
    TResult Function()? signInWithEmailandPressed,
    TResult Function()? signInWithGooglePressed,
  }) {
    return signInWithEmailandPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function()? registerWithEmailandPressed,
    TResult Function()? signInWithEmailandPressed,
    TResult Function()? signInWithGooglePressed,
    required TResult orElse(),
  }) {
    if (signInWithEmailandPressed != null) {
      return signInWithEmailandPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_RegisterWithEmailandPassword value)
        registerWithEmailandPressed,
    required TResult Function(_SignInWithEmailandPassword value)
        signInWithEmailandPressed,
    required TResult Function(_SignInWithGooglePressed value)
        signInWithGooglePressed,
  }) {
    return signInWithEmailandPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_RegisterWithEmailandPassword value)?
        registerWithEmailandPressed,
    TResult Function(_SignInWithEmailandPassword value)?
        signInWithEmailandPressed,
    TResult Function(_SignInWithGooglePressed value)? signInWithGooglePressed,
  }) {
    return signInWithEmailandPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_RegisterWithEmailandPassword value)?
        registerWithEmailandPressed,
    TResult Function(_SignInWithEmailandPassword value)?
        signInWithEmailandPressed,
    TResult Function(_SignInWithGooglePressed value)? signInWithGooglePressed,
    required TResult orElse(),
  }) {
    if (signInWithEmailandPressed != null) {
      return signInWithEmailandPressed(this);
    }
    return orElse();
  }
}

abstract class _SignInWithEmailandPassword implements SignInFromEvent {
  const factory _SignInWithEmailandPassword() = _$_SignInWithEmailandPassword;
}

/// @nodoc
abstract class _$SignInWithGooglePressedCopyWith<$Res> {
  factory _$SignInWithGooglePressedCopyWith(_SignInWithGooglePressed value,
          $Res Function(_SignInWithGooglePressed) then) =
      __$SignInWithGooglePressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$SignInWithGooglePressedCopyWithImpl<$Res>
    extends _$SignInFromEventCopyWithImpl<$Res>
    implements _$SignInWithGooglePressedCopyWith<$Res> {
  __$SignInWithGooglePressedCopyWithImpl(_SignInWithGooglePressed _value,
      $Res Function(_SignInWithGooglePressed) _then)
      : super(_value, (v) => _then(v as _SignInWithGooglePressed));

  @override
  _SignInWithGooglePressed get _value =>
      super._value as _SignInWithGooglePressed;
}

/// @nodoc

class _$_SignInWithGooglePressed implements _SignInWithGooglePressed {
  const _$_SignInWithGooglePressed();

  @override
  String toString() {
    return 'SignInFromEvent.signInWithGooglePressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _SignInWithGooglePressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function() registerWithEmailandPressed,
    required TResult Function() signInWithEmailandPressed,
    required TResult Function() signInWithGooglePressed,
  }) {
    return signInWithGooglePressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function()? registerWithEmailandPressed,
    TResult Function()? signInWithEmailandPressed,
    TResult Function()? signInWithGooglePressed,
  }) {
    return signInWithGooglePressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function()? registerWithEmailandPressed,
    TResult Function()? signInWithEmailandPressed,
    TResult Function()? signInWithGooglePressed,
    required TResult orElse(),
  }) {
    if (signInWithGooglePressed != null) {
      return signInWithGooglePressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_RegisterWithEmailandPassword value)
        registerWithEmailandPressed,
    required TResult Function(_SignInWithEmailandPassword value)
        signInWithEmailandPressed,
    required TResult Function(_SignInWithGooglePressed value)
        signInWithGooglePressed,
  }) {
    return signInWithGooglePressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_RegisterWithEmailandPassword value)?
        registerWithEmailandPressed,
    TResult Function(_SignInWithEmailandPassword value)?
        signInWithEmailandPressed,
    TResult Function(_SignInWithGooglePressed value)? signInWithGooglePressed,
  }) {
    return signInWithGooglePressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_RegisterWithEmailandPassword value)?
        registerWithEmailandPressed,
    TResult Function(_SignInWithEmailandPassword value)?
        signInWithEmailandPressed,
    TResult Function(_SignInWithGooglePressed value)? signInWithGooglePressed,
    required TResult orElse(),
  }) {
    if (signInWithGooglePressed != null) {
      return signInWithGooglePressed(this);
    }
    return orElse();
  }
}

abstract class _SignInWithGooglePressed implements SignInFromEvent {
  const factory _SignInWithGooglePressed() = _$_SignInWithGooglePressed;
}

/// @nodoc
class _$SignInFromStateTearOff {
  const _$SignInFromStateTearOff();

  _SignInFromState call(
      {required EmailAddress emailAddress,
      required Password password,
      required bool showErrorMessages,
      required bool isSubmitting,
      required Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption}) {
    return _SignInFromState(
      emailAddress: emailAddress,
      password: password,
      showErrorMessages: showErrorMessages,
      isSubmitting: isSubmitting,
      authFailureOrSuccessOption: authFailureOrSuccessOption,
    );
  }
}

/// @nodoc
const $SignInFromState = _$SignInFromStateTearOff();

/// @nodoc
mixin _$SignInFromState {
  EmailAddress get emailAddress => throw _privateConstructorUsedError;
  Password get password => throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  Option<Either<AuthFailure, Unit>> get authFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignInFromStateCopyWith<SignInFromState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInFromStateCopyWith<$Res> {
  factory $SignInFromStateCopyWith(
          SignInFromState value, $Res Function(SignInFromState) then) =
      _$SignInFromStateCopyWithImpl<$Res>;
  $Res call(
      {EmailAddress emailAddress,
      Password password,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption});
}

/// @nodoc
class _$SignInFromStateCopyWithImpl<$Res>
    implements $SignInFromStateCopyWith<$Res> {
  _$SignInFromStateCopyWithImpl(this._value, this._then);

  final SignInFromState _value;
  // ignore: unused_field
  final $Res Function(SignInFromState) _then;

  @override
  $Res call({
    Object? emailAddress = freezed,
    Object? password = freezed,
    Object? showErrorMessages = freezed,
    Object? isSubmitting = freezed,
    Object? authFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      authFailureOrSuccessOption: authFailureOrSuccessOption == freezed
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, Unit>>,
    ));
  }
}

/// @nodoc
abstract class _$SignInFromStateCopyWith<$Res>
    implements $SignInFromStateCopyWith<$Res> {
  factory _$SignInFromStateCopyWith(
          _SignInFromState value, $Res Function(_SignInFromState) then) =
      __$SignInFromStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {EmailAddress emailAddress,
      Password password,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption});
}

/// @nodoc
class __$SignInFromStateCopyWithImpl<$Res>
    extends _$SignInFromStateCopyWithImpl<$Res>
    implements _$SignInFromStateCopyWith<$Res> {
  __$SignInFromStateCopyWithImpl(
      _SignInFromState _value, $Res Function(_SignInFromState) _then)
      : super(_value, (v) => _then(v as _SignInFromState));

  @override
  _SignInFromState get _value => super._value as _SignInFromState;

  @override
  $Res call({
    Object? emailAddress = freezed,
    Object? password = freezed,
    Object? showErrorMessages = freezed,
    Object? isSubmitting = freezed,
    Object? authFailureOrSuccessOption = freezed,
  }) {
    return _then(_SignInFromState(
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      authFailureOrSuccessOption: authFailureOrSuccessOption == freezed
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$_SignInFromState implements _SignInFromState {
  const _$_SignInFromState(
      {required this.emailAddress,
      required this.password,
      required this.showErrorMessages,
      required this.isSubmitting,
      required this.authFailureOrSuccessOption});

  @override
  final EmailAddress emailAddress;
  @override
  final Password password;
  @override
  final bool showErrorMessages;
  @override
  final bool isSubmitting;
  @override
  final Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption;

  @override
  String toString() {
    return 'SignInFromState(emailAddress: $emailAddress, password: $password, showErrorMessages: $showErrorMessages, isSubmitting: $isSubmitting, authFailureOrSuccessOption: $authFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SignInFromState &&
            (identical(other.emailAddress, emailAddress) ||
                const DeepCollectionEquality()
                    .equals(other.emailAddress, emailAddress)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessages, showErrorMessages)) &&
            (identical(other.isSubmitting, isSubmitting) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmitting, isSubmitting)) &&
            (identical(other.authFailureOrSuccessOption,
                    authFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.authFailureOrSuccessOption,
                    authFailureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(emailAddress) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(authFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  _$SignInFromStateCopyWith<_SignInFromState> get copyWith =>
      __$SignInFromStateCopyWithImpl<_SignInFromState>(this, _$identity);
}

abstract class _SignInFromState implements SignInFromState {
  const factory _SignInFromState(
      {required EmailAddress emailAddress,
      required Password password,
      required bool showErrorMessages,
      required bool isSubmitting,
      required Option<Either<AuthFailure, Unit>>
          authFailureOrSuccessOption}) = _$_SignInFromState;

  @override
  EmailAddress get emailAddress => throw _privateConstructorUsedError;
  @override
  Password get password => throw _privateConstructorUsedError;
  @override
  bool get showErrorMessages => throw _privateConstructorUsedError;
  @override
  bool get isSubmitting => throw _privateConstructorUsedError;
  @override
  Option<Either<AuthFailure, Unit>> get authFailureOrSuccessOption =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SignInFromStateCopyWith<_SignInFromState> get copyWith =>
      throw _privateConstructorUsedError;
}
