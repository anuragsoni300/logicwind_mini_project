import 'package:bloc/bloc.dart';
import 'package:ddd/backend/login_helper.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:meta/meta.dart';

part 'loginuser_state.dart';

class LoginuserCubit extends Cubit<LoginuserState> {
  LoginHelper helper = LoginHelper();
  LoginuserCubit() : super(LoginuserInitial());

  void login(String email, String password) {
    helper.login(email, password).then(
          (user) => emit(
            LoginuserDone(user: user),
          ),
        );
  }
}
