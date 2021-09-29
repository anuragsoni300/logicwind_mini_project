import 'package:ddd/backend/cubit/loginuser_cubit.dart';
import 'package:ddd/backend/static/static_class.dart';
import 'package:ddd/screens/login/login_error.dart';
import 'package:ddd/screens/top_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    return Column(
      children: [
        TopBar(text: 'Login'),
        Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextFormField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'example@gmail.com',
                  filled: true,
                  contentPadding:
                      const EdgeInsets.only(left: 14.0, bottom: 6.0, top: 8.0),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                onChanged: (val) {
                  _formKey.currentState!.validate();
                  Constants.email = val;
                },
                onSaved: (val) {
                  Constants.email = val;
                },
                validator: (val) {
                  if (val == null || val.isEmpty) {
                    return 'Please enter some text';
                  }
                  if (!RegExp(
                          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                      .hasMatch(val)) {
                    return 'Not a valid Email';
                  }
                },
              ),
              TextFormField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'password',
                  filled: true,
                  contentPadding:
                      const EdgeInsets.only(left: 14.0, bottom: 6.0, top: 8.0),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                onChanged: (val) {
                  _formKey.currentState!.validate();
                  Constants.password = val;
                },
                onSaved: (val) {
                  Constants.password = val;
                },
                validator: (val) {
                  if (val == null || val.isEmpty) {
                    return 'Please enter your password';
                  }
                  if (val.length <= 6) {
                    return 'Password should be more than 6 character long';
                  }
                },
              ),
              IconButton(
                onPressed: () {
                  BlocProvider.of<LoginuserCubit>(context)
                      .login(Constants.email!, Constants.password!);
                },
                icon: Icon(Icons.forward),
              ),
              LoginError(),
            ],
          ),
        ),
      ],
    );
  }
}
