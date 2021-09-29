import 'package:firebase_auth/firebase_auth.dart';

class LoginHelper {
  Future<User> register(String email, String password) async {
    final authUser = await FirebaseAuth.instance
        .createUserWithEmailAndPassword(email: email, password: password);
    User user = authUser.user!;
    return user;
  }

  Future<User> login(String email, String password) async {
    final authUser = await FirebaseAuth.instance
        .createUserWithEmailAndPassword(email: email, password: password);
    // final authUser = await FirebaseAuth.instance
    //     .signInWithEmailAndPassword(email: email, password: password);
    User user = authUser.user!;
    print(user.displayName);
    return user;
  }

  Future logout() async {
    await FirebaseAuth.instance.signOut();
  }
}
