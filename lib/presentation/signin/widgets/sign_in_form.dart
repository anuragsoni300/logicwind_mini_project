import 'package:another_flushbar/flushbar.dart';
import 'package:ddd/application/auth/sign_in_from_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignInForm extends StatelessWidget {
  const SignInForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInFromBloc, SignInFromState>(
      listener: (context, state) {
        state.authFailureOrSuccessOption.fold(
          () => null,
          (a) => a.fold(
            (l) => Flushbar(
              message: l.map(
                  canceledbyuser: (_) => 'Cancelled',
                  serverError: (_) => "serverError",
                  emailAlreadyInUse: (_) => "emailAlreadyInUse",
                  invalidEmailAndPassword: (_) => "invalidEmailAndPassword"),
              duration: const Duration(seconds: 3),
            )..show(context),
            (_) => Navigator.pushNamed(context, '/mainpage'),
          ),
        );
      },
      builder: (context, state) {
        return Form(
          autovalidateMode: AutovalidateMode.always,
          child: ListView(
            children: [
              const Text(
                'Hello',
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox(height: 100),
              TextFormField(
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.email),
                  labelText: 'Email',
                ),
                autocorrect: false,
                onChanged: (val) => context
                    .read<SignInFromBloc>()
                    .add(SignInFromEvent.emailChanged(val)),
                validator: (_) => context
                    .read<SignInFromBloc>()
                    .state
                    .emailAddress
                    .value
                    .fold(
                      (l) => l.maybeMap(
                        invalidEmail: (_) => 'Invalid Email',
                        orElse: () => null,
                      ),
                      (_) => null,
                    ),
              ),
              const SizedBox(height: 8),
              TextFormField(
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.email),
                  labelText: 'Password',
                ),
                autocorrect: false,
                obscureText: true,
                onChanged: (val) => context
                    .read<SignInFromBloc>()
                    .add(SignInFromEvent.passwordChanged(val)),
                validator: (_) =>
                    context.read<SignInFromBloc>().state.password.value.fold(
                          (l) => l.maybeMap(
                            invalidPassword: (_) => 'Short Password',
                            orElse: () => null,
                          ),
                          (_) => null,
                        ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () {
                      context.read<SignInFromBloc>().add(
                            const SignInFromEvent.signInWithEmailandPressed(),
                          );
                    },
                    child: const Text(
                      'SignIn',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      context.read<SignInFromBloc>().add(
                            const SignInFromEvent.registerWithEmailandPressed(),
                          );
                    },
                    child: const Text(
                      'Register',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ],
              ),
              ElevatedButton(
                onPressed: () {
                  context.read<SignInFromBloc>().add(
                        const SignInFromEvent.signInWithGooglePressed(),
                      );
                },
                child: const Text(
                  'Google',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
