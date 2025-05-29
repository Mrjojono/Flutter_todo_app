import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test/components/DrawerComponent.dart';
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
          drawer: DrawerComponent(),
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
                ),
                SizedBox(height: 16),

                TextField(decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Ajouter la description de vos tache",
                  hintStyle: TextStyle(
                    color: Colors.grey,
                  ),

                ),
                ),
                SizedBox(height: 16),
                ElevatedButton(onPressed:  () async {
                  DateTime? pickedDate = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(2000),
                    lastDate: DateTime(2100),
                  );
                  if (pickedDate != null) {
                    print("Date sélectionnée : ${pickedDate.toLocal()}");
                    DateTime DateSelectionner  =  pickedDate.toLocal();
                    print(DateSelectionner);
                  }
                },
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(350, 50),
                    // width: 250, height: 50
                    backgroundColor: Color(0xff040c0a),
                    foregroundColor: Colors.white,
                    shadowColor: Colors.grey,
                    textStyle: TextStyle(fontSize: 20),
                  ),
                  child: Text("choisir une date"),

                ),
                SizedBox(height: 20,),
                ElevatedButton(
                  onPressed: () {
                    // Action à faire lors du clic
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(350, 50),
                    backgroundColor:
                      Colors.green,
                    foregroundColor: Colors.white,
                    shadowColor: Colors.grey,
                    textStyle: TextStyle(fontSize: 20),
                    // width: 250, height: 50
                  ),
                  child: Text("Add task"),
                )
              ],
            ))
          ],
        ),
      ),
    ));
  }
}
