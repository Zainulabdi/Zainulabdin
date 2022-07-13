import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Fee Manigment '),
          ),
          body: Center(
              child: Column(children: <Widget>[
                Container(
                  margin: EdgeInsets.all(25),
                  child: FlatButton(
                    child: Text(
                      'Manager',
                      style: TextStyle(fontSize: 20.0),
                    ),
                    color: Colors.cyan,
                    textColor: Colors.black,
                    onPressed: () {},
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(25),
                  child: FlatButton(
                    child: Text(
                      'Teacher',
                      style: TextStyle(fontSize: 20.0),
                    ),
                    color: Colors.cyan,
                    textColor: Colors.black,
                    onPressed: () {},
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(25),
                  child: FlatButton(
                    child: Text(
                      'Student',
                      style: TextStyle(fontSize: 20.0),
                    ),
                    color: Colors.cyan,
                    textColor: Colors.black,
                    onPressed: () {},
                  ),
                ),
              ]))),
    );
  }
}