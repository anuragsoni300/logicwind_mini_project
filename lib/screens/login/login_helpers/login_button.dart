import 'package:ddd/backend/cubit/loginuser_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        BlocProvider.of<LoginuserCubit>(context).login();
      },
      icon: Icon(Icons.forward),
    );
  }
}
