// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_firestore/cloud_firestore.dart' as _i4;
import 'package:firebase_auth/firebase_auth.dart' as _i3;
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i5;
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart' as _i2;

import 'application/auth/sign_in_from_bloc.dart' as _i6;
import 'domain/auth/i_auth_facade.dart' as _i7;
import 'domain/auth/i_auth_facade.dart';
import 'infrastructure/auth/firebase_auth_facade.dart' as _i8;
import 'infrastructure/auth/firebase_auth_facade.dart';
import 'infrastructure/core/firebase_injectable_module.dart'
    as _i9; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  gh.lazySingleton<_i3.FirebaseAuth>(
      () => firebaseInjectableModule.firebaseAuth);
  gh.lazySingleton<_i4.FirebaseFirestore>(
      () => firebaseInjectableModule.firestore);
  gh.lazySingleton<_i5.GoogleSignIn>(
      () => firebaseInjectableModule.googleSignIn);
  gh.factory<_i6.SignInFromBloc>(
      () => _i6.SignInFromBloc(get<_i7.IAuthFacade>()));
  gh.lazySingleton<IAuthFacade>(
      () => FirebaseAuthFascade(get<FirebaseAuth>(), get<GoogleSignIn>()));
  gh.lazySingleton<_i8.FirebaseAuthFascade>(() => _i8.FirebaseAuthFascade(
      get<_i3.FirebaseAuth>(), get<_i5.GoogleSignIn>()));
  return get;
}

class _$FirebaseInjectableModule extends _i9.FirebaseInjectableModule {}
