import 'package:flutter/material.dart';

import '../modal/user.dart';

class Details extends StatelessWidget {
   final User user;
   const Details({super.key, required this.user, });

  @override
  Widget build(BuildContext context) {
    return SafeArea(child:  Scaffold(
      appBar: AppBar(title: Text("Details"),),
      body: Center(
        child: Text(this.user.nom),
      ),

    ));
  }
}
