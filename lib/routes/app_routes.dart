import 'package:flutter/material.dart';
import 'package:yaho_test/screens/register/register_screen.dart';

import '../screens/login/login_screen.dart';



class AppRoutes {
  static MaterialPageRoute routes(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) {
        switch (settings.name) {


          case RegisterScreen.routeName:
            return const RegisterScreen();
            default:
            return const LoginScreen();
        }
      },
    );
  }
}
