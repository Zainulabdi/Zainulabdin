import 'package:flutter/material.dart';
import 'navbar.dart';
class students extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      appBar: AppBar(

        title:Text("Students"), //title aof appbar
        backgroundColor: Colors.blue, //background color of appbar
          actions: [
      IconButton(
      icon: Icon(Icons.plus_one),
        onPressed: (){
          //code to execute when this button is pressed
        }

    ),
    ]
    ),
    );
  }
}
