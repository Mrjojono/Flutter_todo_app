import 'package:flutter/material.dart';
import 'package:remixicon/remixicon.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child:  Scaffold(
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'All contact',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Icon(Icons.login_outlined),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(9),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: SearchBar(
                      elevation: WidgetStatePropertyAll(0),
                      leading: Icon(Icons.search),
                      hintText: "Search",
                    ),
                  ),
                  SizedBox(width: 20,),
                  Icon(RemixIcons.sort_alphabet_desc,size: 30, ),

                ],
              ),
            ),
            Divider(height: 20,),
            Expanded(child: ListView.separated(
                itemBuilder:(context, index) {
                 return ListTile(

                    leading: CircleAvatar(radius: 30,),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min ,
                      children: [
                        Icon(Icons.call),
                        SizedBox(width: 10,),
                        Icon(Icons.email),
                      ],
                    ),
                    title: Text('name',
                      style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text('number'),// subtitle est le sous titre

                  );
                },
                separatorBuilder:(context,index){
                  return Divider(height: 20,);
                },
                itemCount:15
            ))
          ],
        ),
      ),
    );
  }
}

class Contact {
  final String name;
  final String role;
  final Color color;
  final String initial;

  Contact(this.name, this.role, this.color)
      : initial = name.isNotEmpty ? name[0] : '?';

}
//scale fold joue le role d'une base pour notre application
