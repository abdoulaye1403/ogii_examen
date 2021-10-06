import 'package:flutter/material.dart';

import 'package:ogii/screens/login_screens/sign_in_screens/components/body.dart';

class SignInScreen extends StatelessWidget {
  static String routeName = "/sign_in";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[700],
      body: LoginScreen(),
    );
  }
}
