import 'package:flutter/material.dart';
import 'navbar.dart';
class mainpannel extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      appBar: AppBar(

        title:Text("Fee Managment"), //title aof appbar
        backgroundColor: Colors.blue, //background color of appbar
      ),
    );
  }
}
