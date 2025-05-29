import 'package:flutter/material.dart';
import 'package:test/components/DrawerComponent.dart';

class Calculator extends StatelessWidget {
  const Calculator({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Calculator"),
      ),
      drawer: DrawerComponent(),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 20,),
          Expanded(flex: 1,child: Column(
            children: [
              TextField(

              ),
            ],
          ),
          ),

          Expanded(flex: 1,
              child:Column(
           children: [
             Row(
               children: [
                 Expanded(child: ElevatedButton(onPressed: () {}, child: Text('7'))),
                 Expanded(child: ElevatedButton(onPressed: () {}, child: Text('6'))),
                 Expanded(child: ElevatedButton(onPressed: () {}, child: Text('5'))),
               ],
             ),
             Row(
               children: [
                 Expanded(child: ElevatedButton(onPressed: () {}, child: Text('7'))),
                 Expanded(child: ElevatedButton(onPressed: () {}, child: Text('6'))),
                 Expanded(child: ElevatedButton(onPressed: () {}, child: Text('5'))),
               ],
             ),

           ],
          )
            )
        ],
      ),
    ));
  }
}
