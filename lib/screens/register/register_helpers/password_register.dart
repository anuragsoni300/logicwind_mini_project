import 'package:ddd/backend/static/static_class.dart';
import 'package:flutter/material.dart';

class PasswordRegister extends StatelessWidget {
  final formkey;
  const PasswordRegister({Key? key, this.formkey}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
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
        formkey.currentState!.validate();
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
    );
  }
}
