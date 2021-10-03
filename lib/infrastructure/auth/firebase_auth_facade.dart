import 'package:ddd/domain/auth/auth_failure.dart';
import 'package:ddd/domain/auth/i_auth_facade.dart';
import 'package:dartz/dartz.dart';
import 'package:ddd/domain/auth/value_object.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
@Injectable(as: IAuthFacade)
class FirebaseAuthFascade implements IAuthFacade {
  final FirebaseAuth _firebaseAuth;
  final GoogleSignIn _googleSignIn;

  FirebaseAuthFascade(this._firebaseAuth, this._googleSignIn);

  @override
  Future<Either<AuthFailure, Unit>> registerwithemialandpassword({
    required EmailAddress emailAddress,
    required Password password,
  }) async {
    final email = emailAddress.getOrCrash();
    final pass = password.getOrCrash();
    try {
      await _firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: pass,
      );
      return right(unit);
    } on PlatformException catch (e) {
      if (e.code == 'email-already-in-use') {
        return left(const AuthFailure.emailAlreadyInUse());
      } else {
        return left(const AuthFailure.serverError());
      }
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInwithemialandpassword(
      {required EmailAddress emailAddress, required Password password}) async {
    final email = emailAddress.getOrCrash();
    final pass = password.getOrCrash();
    try {
      await _firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: pass,
      );
      return right(unit);
    } on PlatformException catch (e) {
      if (e.code == 'user-not-found') {
        return left(const AuthFailure.invalidEmailAndPassword());
      } else {
        return left(const AuthFailure.serverError());
      }
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInwithgoogle() async {
    try {
      final googleUser = await _googleSignIn.signIn();
      if (googleUser == null) {
        return left(const AuthFailure.canceledbyuser());
      }
      final googleAuthentication = await googleUser.authentication;
      final authCredential = GoogleAuthProvider.credential(
        accessToken: googleAuthentication.accessToken,
        idToken: googleAuthentication.idToken,
      );
      return _firebaseAuth
          .signInWithCredential(authCredential)
          .then((value) => right(unit));
    } on PlatformException catch (e) {
      e;
      return left(const AuthFailure.serverError());
    }
  }
}
