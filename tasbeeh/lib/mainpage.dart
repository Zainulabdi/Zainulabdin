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
          child: Container(
            padding: const EdgeInsets.all(90),
            child: ElevatedButton(
              child: const Text('create Tasbeeh'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const createtasbeh()),
                );
              },
            ),
          ),
          ),
        ],
      ),

      ),
    Expanded(child: Row(
    children: [
    Expanded(
    child: Container(
      padding: const EdgeInsets.all(90),
    child: ElevatedButton(
    child: const Text('Count TAsbeeh'),
    onPressed: () {
    Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const counttasbeeh()),
    );
    },
    ),
    ),
    ),


          ],
    ),
      ),
    Expanded(child: Row(
    children: [
    Expanded(
    child: Container(
      padding: const EdgeInsets.all(90),
    child: ElevatedButton(
    child: const Text('View All Tasbeeh'),
    onPressed: () {
    Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const viewalltasbeeh()),
    );
    },
    ),
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