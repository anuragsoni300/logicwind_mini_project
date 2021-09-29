import 'package:ddd/backend/cubit/loginuser_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginError extends StatelessWidget {
  const LoginError({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginuserCubit, LoginuserState>(
      builder: (context, state) {
        if (state is LoginuserDone) {
          return Container();
        }
        if (state is WrongCredential) {
          return Center(child: Text('Wrong credential'));
        } else
          return Container();
      },
    );
  }
}
