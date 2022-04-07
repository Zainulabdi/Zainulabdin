 import 'package:flutter/material.dart';
 import 'package:audioplayers/audioplayers.dart';


void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,

    home: Scaffold(
appBar: AppBar(
  centerTitle: true,
  leading: Icon(Icons.account_circle_sharp),
  title: Text('FA19-BCS-107'),
  backgroundColor: Colors.black,
),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Row(

          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            getView(1 , Colors.red),
            getView(2 , Colors.yellow),
            getView(3 , Colors.green),
            getView(4 , Colors.lime),
            getView(5 , Colors.brown),
            getView(6 , Colors.blueAccent),
            getView(7 , Colors.purple),
          ],
        ),
      )
    ),
  ));
}

Widget getView(int pos , Color color){
  return  Expanded(
    child: TextButton(
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(color)
      ),
      onPressed: (){
        playSound(pos);
      },
      child: Text("click me"),
    ),
  );
}

void playSound(int pos) {
  final audioPlayer = AudioCache();
  audioPlayer.play('assets_note$pos.wav');
}