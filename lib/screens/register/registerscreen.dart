import 'package:ddd/screens/register/register_helpers/email_register.dart';
import 'package:ddd/screens/register/register_helpers/password_register.dart';
import 'package:ddd/screens/register/register_helpers/register_button.dart';
import 'package:ddd/screens/top_bar.dart';
import 'package:flutter/material.dart';

import 'register_helpers/register_error.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          TopBar(text: 'Register'),
          Expanded(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  EmailRgister(),
                  PasswordRegister(),
                  RegisterButton(),
                  RegisterError(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
