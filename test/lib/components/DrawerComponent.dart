import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test/view/Accueill.dart';
import 'package:test/view/calculator.dart';

import '../view/task.dart';
import '../view/Login.dart';
import '../view/home.dart';

class DrawerComponent extends StatelessWidget {
  const DrawerComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.all(10),
        children: [
          UserAccountsDrawerHeader(
            currentAccountPicture: CircleAvatar(),
            accountName: Text("username"),
            accountEmail: Text("email"),
            decoration: BoxDecoration(
              color: Colors.green
            ),
          ),

          ListTile(
            leading: Icon(Icons.home),
            title: Text("Accueil"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Accueill()),
              );
            },
          ),

          ListTile(
            leading: Icon(Icons.task),
            title: Text("Task"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Task()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.contact_page),
            title: Text("Contact"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Home()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.calculate),
            title: Text("Calculator"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Calculator()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text("Logout"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Login(),
                ), //navigation vers la page login pour deconnexion
              );
            },
          ),
        ],
      ),
    );
  }
}
