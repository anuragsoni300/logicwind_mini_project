import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:ddd/domain/auth/auth_failure.dart';
import 'package:ddd/domain/auth/i_auth_facade.dart';
import 'package:ddd/domain/auth/value_object.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'sign_in_from_event.dart';
part 'sign_in_from_state.dart';
part 'sign_in_from_bloc.freezed.dart';

@injectable
class SignInFromBloc extends Bloc<SignInFromEvent, SignInFromState> {
  final IAuthFacade _authFacade;

  SignInFromBloc(this._authFacade) : super(SignInFromState.initial()) {
    on(
      (SignInFromEvent event, emit) {
        event.map(
          emailChanged: (e) {
            emit(state.copyWith(
              emailAddress: EmailAddress(e.emailStr),
              authFailureOrSuccessOption: none(),
            ));
          },
          passwordChanged: (e) {
            emit(state.copyWith(
              password: Password(e.password),
              authFailureOrSuccessOption: none(),
            ));
          },
          registerWithEmailandPressed: (e) async {
            final isEMailValid = state.emailAddress.isValid();
            final isPasswordValid = state.password.isValid();
            if (isEMailValid && isPasswordValid) {
              state.copyWith(
                isSubmitting: true,
                authFailureOrSuccessOption: none(),
              );

              final failureOrSuccess =
                  await _authFacade.registerwithemialandpassword(
                emailAddress: state.emailAddress,
                password: state.password,
              );

              emit(state.copyWith(
                isSubmitting: false,
                authFailureOrSuccessOption: some(failureOrSuccess),
              ));
            }

            emit(state.copyWith(
              showErrorMessages: true,
              authFailureOrSuccessOption: none(),
            ));
          },
          signInWithEmailandPressed: (e) async {
            final isEMailValid = state.emailAddress.isValid();
            final isPasswordValid = state.password.isValid();
            if (isEMailValid && isPasswordValid) {
              state.copyWith(
                isSubmitting: true,
                authFailureOrSuccessOption: none(),
              );

              final failureOrSuccess =
                  await _authFacade.signInwithemialandpassword(
                emailAddress: state.emailAddress,
                password: state.password,
              );

              emit(state.copyWith(
                isSubmitting: false,
                authFailureOrSuccessOption: some(failureOrSuccess),
              ));
            }

            emit(state.copyWith(
              showErrorMessages: true,
              authFailureOrSuccessOption: none(),
            ));
          },
          signInWithGooglePressed: (e) async {
            emit(state.copyWith(
              isSubmitting: true,
              authFailureOrSuccessOption: none(),
            ));
            final failureOrSuccess = await _authFacade.signInwithgoogle();
            emit(state.copyWith(
              isSubmitting: false,
              authFailureOrSuccessOption: some(failureOrSuccess),
            ));
          },
        );
      },
    );
  }
}
