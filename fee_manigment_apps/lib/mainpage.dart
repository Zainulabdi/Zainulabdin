import 'package:flutter/material.dart';
import 'package:tasbeeh/managerlogin.dart';
void main() {
  runApp(const MaterialApp(
    title: 'Navigation Basics',
    home: FirstRoute(),
  ));
}

class FirstRoute extends StatelessWidget {
  const FirstRoute({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TASBEEH APP'),
      ),

      body: Column(
        children: [
      Expanded(child: Row(
      children: [
        Expanded(
          child: Card(
            elevation: 60,
            shadowColor: Colors.black12,
            color: Colors.white,
            child: SizedBox(
              width: 300,
              height: 600,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),

                    CircleAvatar(
                      backgroundColor: Colors.black12,
                      radius: 69,
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://tse2.mm.bing.net/th?id=OIP.S3gzuShCpqfakNNGcBf6qwHaHa&pid=Api&P=0&w=198&h=198"), //NetworkImage
                        radius: 65,
                      ), //CircleAvatar
                    ), //CircleAvatar
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      width: 90,
                      child:  ElevatedButton(
                        child: const Text('Manager'),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const counttasbeeh()),
                          );
                        },
                      ), //RaisedButton
                    ),
                    SizedBox(
                      height:30,
                    ),
                    SizedBox(
                      width: 90,
                      child:  ElevatedButton(
                        child: const Text('teacher'),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const counttasbeeh()),
                          );
                        },
                      ), //RaisedButton
                    ),
                    SizedBox(
                      height:30,
                    ),
                    SizedBox(
                      width: 90,
                      child:  ElevatedButton(
                        child: const Text('Student'),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const counttasbeeh()),
                          );
                        },
                      ), //RaisedButton
                    )
                  ],
                ), //Column
              ), //Padding
            ), //SizedBox
          ),
        ),
        ],
      ),

      ),
    ],
    ),
    );
  }
}