import 'package:flutter/material.dart';
import 'package:test/data/UserData.dart';

import '../modal/user.dart';

class Details extends StatelessWidget {
  final User user;

  const Details({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Contact Profil"),
          backgroundColor: Colors.indigo,
        ),
        backgroundColor: Colors.indigo,
        body: Column(
          children: [
            Expanded(
              flex: 1,
              child: Row(
                children: [
                  Expanded(child: Center(
                      child: CircleAvatar(radius: 100,
                    backgroundColor: user.color,
                    child: Text(user.nom[0],style: TextStyle(fontSize: 90),),
                  ))),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50),
                  ),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundColor: Colors.indigo,
                            child: Icon(
                              Icons.phone,
                              size: 35,
                              color: Colors.white,
                            ),
                          ),
                          CircleAvatar(
                            radius: 30,
                            backgroundColor: Colors.indigo,
                            child: Icon(
                              Icons.message,
                              size: 35,
                              color: Colors.white,
                            ),
                          ),
                          CircleAvatar(
                            radius: 30,
                            backgroundColor: Colors.indigo,
                            child: Icon(
                              Icons.email,
                              size: 35,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Divider(),

                    Row(
                      children: [
                       Padding(
                           padding:EdgeInsets.all(10),
                          child:Text(
                            "Contact",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                            ),
                          ),
                       )
                      ],
                    ),
                    
                    Column(
                      children: [
                        ListTile(
                          leading: Text("Numero: ",
                            style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),
                          ),
                          title: Text(user.numero.toString(),
                            style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                          ),
                        ),
                        ListTile(
                          leading: Text("Email: ",
                            style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),
                          ),
                          title: Text(user.email,
                            style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                          ),
                        ),
                        ListTile(
                          leading: Text("Post: ",
                            style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),
                          ),
                          title: Text(user.post,
                            style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                          ),
                        ),
                        ListTile(
                          leading: Text("Profil: ",
                            style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),
                          ),
                          title: Text(user.profil,
                            style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    )
                    
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
