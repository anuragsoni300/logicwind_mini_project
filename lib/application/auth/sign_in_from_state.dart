part of 'sign_in_from_bloc.dart';

@freezed
class SignInFromState with _$SignInFromState {
  const factory SignInFromState({
    required EmailAddress emailAddress,
    required Password password,
    required bool showErrorMessages,
    required bool isSubmitting,
    required Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption,
  }) = _SignInFromState;

  factory SignInFromState.initial() => SignInFromState(
        emailAddress: EmailAddress(''),
        password: Password(''),
        showErrorMessages: false,
        isSubmitting: false,
        authFailureOrSuccessOption: none(),
      );
}
