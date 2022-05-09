import 'package:flutter/material.dart';
import 'package:tasbeeh/createtasbeh.dart';
import 'package:tasbeeh/counttasbeeh.dart';
import 'package:tasbeeh/viewalltasbeeh.dart';

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
            elevation: 50,
            shadowColor: Colors.black,
            color: Colors.greenAccent[100],
            child: SizedBox(
              width: 300,
              height: 500,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),

                    CircleAvatar(
                      backgroundColor: Colors.green[500],
                      radius: 100,
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRewzarbu3koHDkvfJktXphkEUyMcD9vBHhbQ&usqp=CAU"), //NetworkImage
                        radius: 95,
                      ), //CircleAvatar
                    ), //CircleAvatar
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                        'Tasbih (Arabic: تَسْبِيح, tasbīḥ) is a form of dhikr that involves the glorification of Allah in Islam by saying: "Subhan Allah" (سُبْحَانَ ٱللَّٰهِ; lit. "Glory be to God'
                    ),
                    Text(
                        ' (1)Subhan Allah'
                    ),
                    Text(
                        ' (1)Alham dulliah'
                    ),
                    Text(
                        ' (1)Allah huakber'
                    ),
                    SizedBox(
                      height: 70,
                    ),
                    SizedBox(
                      width: 80,
                      child:  ElevatedButton(
                        child: const Text('creste tasbeh'),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const counttasbeeh()),
                          );
                        },
                      ), //RaisedButton
                    ) //SizedBox
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