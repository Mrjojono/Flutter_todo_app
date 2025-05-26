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
                }, child: Text("choisir une date"),

                ),
                SizedBox(height: 16),

                ElevatedButton(
                  onPressed: () {
                    // Action à faire lors du clic
                  },
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
