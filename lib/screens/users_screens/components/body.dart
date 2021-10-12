import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:ogii/screens/login_screens/sign_in_screens/sign_in_screen.dart';
import 'package:ogii/screens/mairie_screens/mairie_screen.dart';
import 'package:provider/provider.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text("Bienvenue dans OGII"),
        backgroundColor: Colors.green[700],
      ),
      backgroundColor: Colors.green[100],
      drawer: new Drawer(
          child: ListView(children: <Widget>[
        UserAccountsDrawerHeader(
          accountName: new Text("Abdoulaye",
              style:
                  new TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0)),
          accountEmail: new Text("ablo@ista.com"),
          currentAccountPicture: CircleAvatar(
            backgroundImage: AssetImage("assets/images/profil.JPG"),
          ),
        ),
        ListTile(leading: Icon(Icons.person), title: Text("profil")),
        ListTile(leading: Icon(Icons.vpn_key), title: Text("Set Password")),
        ListTile(leading: Icon(Icons.info), title: Text("Help")),
        ListTile(
          leading: Icon(Icons.logout),
          title: Text("signout"),
          onTap: () {
            logout(context);
          },
        ),
      ])),
      body: Container(
        child: GridView.count(
          crossAxisCount: 2,
          children: <Widget>[
            Card(
              margin: EdgeInsets.all(8),
              child: InkWell(
                onTap: () {},
                splashColor: Colors.green,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Image(
                        image: new AssetImage("assets/images/police.jpg"),
                        width: 150,
                        height: 110,
                      ),
                      Text(
                        "Police",
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
                onTap: () {
                  Navigator.pushNamed(context, MairieScreen.routeName);
                },
                splashColor: Colors.green,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Image(
                        image: new AssetImage("assets/images/mairie.jpg"),
                        width: 150,
                        height: 120,
                      ),
                      Text(
                        "Mairie",
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
                      Image(
                        image: new AssetImage("assets/images/justice.jpg"),
                        width: 150,
                        height: 110,
                      ),
                      Text(
                        "Justice",
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
                      Image(
                        image: new AssetImage("assets/images/mali.jpg"),
                        width: 150,
                        height: 120,
                      ),
                      Text(
                        "ONT",
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

  Future<void> logout(BuildContext context) async {
    await FirebaseAuth.instance.signOut();
    Navigator.pushNamed(context, SignInScreen.routeName);
  }
}
