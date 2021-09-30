import 'package:ddd/screens/login/login_helpers/login_button.dart';
import 'package:ddd/screens/top_bar.dart';
import 'package:flutter/material.dart';

import 'login_helpers/email_input.dart';
import 'login_helpers/login_error.dart';
import 'login_helpers/password_input.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          TopBar(text: 'Login'),
          Expanded(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  EmailInput(),
                  PasswordInput(),
                  LoginButton(),
                  LoginError(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
