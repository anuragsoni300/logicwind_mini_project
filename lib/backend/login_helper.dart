import 'package:ddd/backend/static/static_class.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginHelper {
  Future<dynamic> register() async {
    try {
      final authUser = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(
              email: Constants.email!, password: Constants.password!);
      User user = authUser.user!;
      return user;
    } catch (e) {
      return 'a';
    }
  }

  Future<dynamic> login() async {
    try {
      final authUser = await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: Constants.email!, password: Constants.password!);
      User user = authUser.user!;
      return user;
    } catch (e) {
      return 'a';
    }
  }

  Future logout() async {
    await FirebaseAuth.instance.signOut();
  }
}
