import 'package:ddd/screens/login/loginscreen.dart';
import 'package:ddd/screens/register/registerscreen.dart';
import 'package:ddd/screens/shopping_frontend/search_page/search_page.dart';
import 'package:ddd/screens/welcome/welcome.dart';
import 'package:flutter/material.dart';

import 'screens/shopping_frontend/front_page/main_page.dart';

class MyRoutes {
  Route userroutes(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case '/login':
        return MaterialPageRoute(
            builder: (context) => Scaffold(body: LoginScreen()));
      case '/register':
        return MaterialPageRoute(
            builder: (context) => Scaffold(body: RegisterScreen()));
      case '/mainpage':
        return MaterialPageRoute(
            builder: (context) => Scaffold(body: MainPage()));
      case '/search':
        return MaterialPageRoute(
            builder: (context) => Scaffold(body: SearchPage()));
      default:
        return MaterialPageRoute(
            builder: (context) => Scaffold(body: WelcomeScreen()));
    }
  }
}
