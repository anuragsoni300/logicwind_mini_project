import 'package:flutter/material.dart';

import 'presentation/shopping_frontend/front_page/main_page.dart';
import 'presentation/signin/sign_in_page.dart';

class MyRoutes {
  Route userroutes(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case '/mainpage':
        return MaterialPageRoute(
            builder: (context) => const Scaffold(body: MainPage()));
      default:
        return MaterialPageRoute(builder: (context) => const SignInPage());
    }
  }
}
