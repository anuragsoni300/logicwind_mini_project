import 'package:ddd/screens/database_screen/front_page.dart';
import 'package:ddd/screens/login/loginscreen.dart';
import 'package:ddd/screens/register/registerscreen.dart';
import 'package:ddd/screens/welcome/welcome.dart';
import 'package:flutter/material.dart';

class MyRoutes {
  Route userroutes(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case '/login':
        return MaterialPageRoute(
            builder: (context) => Scaffold(body: LoginScreen()));
      case '/register':
        return MaterialPageRoute(
            builder: (context) => Scaffold(body: RegisterScreen()));
      case '/frontpage':
        return MaterialPageRoute(
            builder: (context) => Scaffold(body: FrontPage()));
      default:
        return MaterialPageRoute(
            builder: (context) => Scaffold(body: WelcomeScreen()));
    }
  }
}
