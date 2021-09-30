import 'package:ddd/backend/cubit/loginuser_cubit.dart';
import 'package:ddd/routes.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(BlocProvider(
    create: (context) => LoginuserCubit(),
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final myRoutes = MyRoutes();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/mainpage',
      onGenerateRoute: myRoutes.userroutes,
    );
  }
}
