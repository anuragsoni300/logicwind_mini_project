import 'package:firebase_auth/firebase_auth.dart';

class LoginHelper {
  Future<dynamic> register(String email, String password) async {
    try {
      final authUser = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);
      User user = authUser.user!;
      return user;
    } catch (e) {
      return 'a';
    }
  }

  Future<dynamic> login(String email, String password) async {
    try {
      final authUser = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
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
