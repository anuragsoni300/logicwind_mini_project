import 'package:ddd/backend/cubit/loginuser_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterError extends StatelessWidget {
  const RegisterError({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginuserCubit, LoginuserState>(
      builder: (context, state) {
        if (state is LoginuserDone) {
          Future.delayed(Duration.zero, () {
            Navigator.pop(context);
            Navigator.pushNamed(context, '/mainpage');
          });
        }
        if (state is LoginuserExist) {
          return Center(
            child: Text(
              'User exist',
              style: GoogleFonts.shadowsIntoLight(
                textStyle: TextStyle(
                  color: Colors.red,
                  height: 1.5,
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                ),
              ),
            ),
          );
        } else
          return Container();
      },
    );
  }
}
