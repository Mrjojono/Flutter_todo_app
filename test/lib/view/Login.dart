import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:test/view/Accueill.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  String _getName() {
    final String name = 'joan';
    return name;
  }

  @override
  Widget build(BuildContext context) {
    // Create a text controller and use it to retrieve the current value
    // of the TextField.
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
        ),
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Expanded(
              flex: 1,
                child:Image(
                    image:AssetImage('assets/images/personne.jpg',
                    ),)
            ),
            Expanded(
              flex: 2,
              child: Padding(
              padding: const EdgeInsets.all(25),
              child: Column(
                // Changed [ to (
                children: <Widget>[
                  // Added the children property
                  SizedBox(height: 20),
                  Text(
                    'Login',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 40),
                  TextField(
                    controller: emailController,
                    decoration: InputDecoration(
                      labelStyle: TextStyle(fontSize: 20),
                      hintStyle: TextStyle(fontSize: 20),
                      hintText: ' Email',
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                  SizedBox(height: 40),
                  TextField(
                    controller: passwordController,
                    obscureText: true,
                    decoration: InputDecoration(
                      labelStyle: TextStyle(fontSize: 20),
                      hintStyle: TextStyle(fontSize: 20),
                      hintText: 'Password',
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),

                  SizedBox(height: 10),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ListTile(
                        leading: Text("Remember me",style: TextStyle(fontSize: 20),),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text("Forget your password?",style: TextStyle(fontSize: 15,color: Colors.blue),),
                          ],
                        ),


                      ),
                    ],
                  ),
                  ElevatedButton(
                    onPressed: () {
                      String name = _getName();
                      String email = emailController.text;
                      String password = passwordController.text;
                      if(name == 'joan' && email== "joan@gmail.com" && password == "joan"){
                        Navigator.push(context,
                          MaterialPageRoute(builder: (context) =>const Accueill()),//navigation vers la page 2
                        );
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      fixedSize: const Size(200, 50),
                      backgroundColor: Colors.black,
                      foregroundColor: Colors.white,
                      shadowColor: Colors.grey,
                    ),
                    child: Text('Login'),
                  ),
                ],
              ), // Changed ] to )
            ),)
          ],
        )
      ),
    );
  }
}
