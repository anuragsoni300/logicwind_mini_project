part of 'sign_in_from_bloc.dart';

@freezed
class SignInFromEvent with _$SignInFromEvent {
  const factory SignInFromEvent.emailChanged(String emailStr) = _EmailChanged;
  const factory SignInFromEvent.passwordChanged(String password) =
      _PasswordChanged;
  const factory SignInFromEvent.registerWithEmailandPressed() =
      _RegisterWithEmailandPassword;
  const factory SignInFromEvent.signInWithEmailandPressed() =
      _SignInWithEmailandPassword;
  const factory SignInFromEvent.signInWithGooglePressed() =
      _SignInWithGooglePressed;
}
