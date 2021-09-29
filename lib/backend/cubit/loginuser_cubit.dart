import 'package:bloc/bloc.dart';
import 'package:ddd/backend/login_helper.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:meta/meta.dart';

part 'loginuser_state.dart';

class LoginuserCubit extends Cubit<LoginuserState> {
  LoginHelper helper = LoginHelper();
  LoginuserCubit() : super(LoginuserInitial());

  void login() {
    helper.login().then(
      (user) {
        if (user is User)
          emit(LoginuserDone(user: user));
        else
          emit(WrongCredential());
      },
    );
  }

  void register() {
    helper.register().then(
      (user) {
        if (user is User)
          emit(LoginuserDone(user: user));
        else
          emit(LoginuserExist());
      },
    );
  }
}
