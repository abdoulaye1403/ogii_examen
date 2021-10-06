import 'package:flutter/widgets.dart';
import 'package:ogii/screens/admin_screens/main/components/side_menu.dart';
import 'package:ogii/screens/admin_screens/main/main_screen.dart';
import 'package:ogii/screens/login_screens/sign_in_screens/sign_in_screen.dart';
import 'package:ogii/screens/login_screens/sign_up_screens/sign_up_screen.dart';
import 'package:ogii/screens/mairie_screens/mairie_screen.dart';
import 'package:ogii/screens/users_screens/home_user_screen.dart';

// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  HomeScreen.routeName: (context) => HomeScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  MyMain.routeName: (context) => MyMain(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  MairieScreen.routeName: (context) => MairieScreen(),
};
