import 'package:flutter/material.dart';
import 'package:ogii/screens/login_screens/sign_up_screens/components/body.dart';

class SignUpScreen extends StatelessWidget {
  static String routeName = "/sign_up";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[700],
      body: RegistrationScreen(),
    );
  }
}
