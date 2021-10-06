import 'package:flutter/material.dart';
import 'package:ogii/routes.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:ogii/screens/login_screens/sign_in_screens/sign_in_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      initialRoute: SignInScreen.routeName,
      routes: routes,
    );
  }
}
