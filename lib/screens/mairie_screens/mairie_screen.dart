import 'package:flutter/material.dart';
import 'package:ogii/components/coustom_bottom_nav_bar.dart';
import 'package:ogii/enums.dart';
import 'package:ogii/screens/mairie_screens/components/body.dart';

class MairieScreen extends StatelessWidget {
  static String routeName = "/mairie";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Mairie(),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.home),
    );
  }
}
