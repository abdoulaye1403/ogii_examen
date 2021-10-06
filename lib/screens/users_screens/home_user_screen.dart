import 'package:flutter/material.dart';
import 'package:ogii/screens/users_screens/components/body.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = "/home";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: home(),
    );
  }
}
