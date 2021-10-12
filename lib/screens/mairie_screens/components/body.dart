import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:ogii/screens/demande_acteNaiss/demande_acteNaisScreen.dart';
import 'package:ogii/screens/login_screens/sign_in_screens/sign_in_screen.dart';

class Mairie extends StatefulWidget {
  const Mairie({Key? key}) : super(key: key);

  @override
  _MairieState createState() => _MairieState();
}

class _MairieState extends State<Mairie> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text("demande d'actes de naissances"),
        backgroundColor: Colors.green[700],
      ),
      backgroundColor: Colors.green[100],
      body: Container(
        child: GridView.count(
          crossAxisCount: 2,
          children: <Widget>[
            Card(
              margin: EdgeInsets.all(8),
              child: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, DemandeActeNaisScreen.routeName);
                },
                splashColor: Colors.green,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(Icons.request_page),
                      Text(
                        "Nouvelles Demendes",
                        style: new TextStyle(fontSize: 20.0),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.all(8),
              child: InkWell(
                onTap: () {},
                splashColor: Colors.green,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(Icons.document_scanner),
                      Text(
                        "Demandes en cours",
                        style: new TextStyle(fontSize: 20.0),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.all(8),
              child: InkWell(
                onTap: () {},
                splashColor: Colors.green,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(Icons.done),
                      Text(
                        "Demandes Traités",
                        style: new TextStyle(fontSize: 20.0),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
