import 'package:ddd/backend/static/static_class.dart';
import 'package:flutter/material.dart';

class EmailInput extends StatelessWidget {
  final formkey;
  const EmailInput({Key? key, this.formkey}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20, left: 20, right: 20),
      child: TextFormField(
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
          formkey.currentState!.validate();
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
    );
  }
}
