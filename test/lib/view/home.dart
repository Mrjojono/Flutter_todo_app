import 'package:flutter/material.dart';
import 'package:remixicon/remixicon.dart';
import 'package:test/data/UserData.dart';
import 'package:test/components/DrawerComponent.dart';
import 'details.dart';

class Home extends StatelessWidget {
  const Home({super.key});
 


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child:  Scaffold(
        appBar: AppBar(
        ),
        drawer: DrawerComponent(),
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
                 return GestureDetector(
                   onTap: (){
                     Navigator.push(context,
                            MaterialPageRoute (
                                builder: (context) => Details(user: listUser[index],)) ) ;
                   },
                   child: ListTile(
                      leading: CircleAvatar(radius: 30,
                        backgroundColor: listUser[index].color,
                        child: Text(listUser[index].nom[0],
                        style: TextStyle(color: Colors.white, fontSize: 21),
                        ),
                      ),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min ,
                        children: [
                          Icon(Icons.call),
                          SizedBox(width: 10,),
                          Icon(Icons.email),
                        ],
                      ),
                      title: Text(listUser[index].nom,
                        style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(listUser[index].post),// subtitle est le sous titre
                   
                    ),

                 );
                },
                separatorBuilder:(context,index){
                  return Divider(height: 20,);
                },
                itemCount: listUser.length
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

  Contact(this.name, this.role, this.color);
}
//scale fold joue le role d'une base pour notre application
