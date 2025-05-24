import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test/view/task.dart';
import 'Login.dart';
import 'home.dart';
class Accueill extends StatelessWidget {
  const Accueill({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            title: Text("Accueil"),
          ),
          drawer: Drawer(
            child: ListView(
              padding: EdgeInsets.all(10),
              children:[

              UserAccountsDrawerHeader(
                currentAccountPicture: CircleAvatar(),
                accountName: Text("username"),
                accountEmail: Text("email"),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.lightBlue, Colors.deepPurpleAccent],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
              ),

                ListTile(
                  leading: Icon(Icons.home),
                  title: Text("Accueil"),
                  onTap: (){
                    Navigator.pop(context);
                  },
                ),

                ListTile(
                  leading: Icon(Icons.task),
                  title: Text("Task"),
                  onTap: (){
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context)=> const Task(),));
                  },
                ),
                ListTile(
                  leading: Icon(Icons.contact_page),
                  title: Text("Contact"),
                  onTap: (){
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context)=> const Home(),));
                  },
                ),
                ListTile(
                  leading: Icon(Icons.logout),
                  title: Text("Task"),
                  onTap: (){
                    Navigator.push(context,
                      MaterialPageRoute(builder: (context) =>const Login()),//navigation vers la page login pour deconnexion
                    );
                  },
                ),


            ],
          )
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Text("Ajouter des Taches",
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
              ),
            ),
            Form(child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(),
                    hintText: "Ajouter une tache",
                    hintStyle: TextStyle(
                      color: Colors.grey,
                    ),
                    border: OutlineInputBorder(gapPadding: 20),
                  ),
                )

              ],
            ))
          ],
        ),
      ),
    ));
  }
}
