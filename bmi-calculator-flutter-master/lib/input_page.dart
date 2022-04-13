import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'IconTextFile.dart';
import 'ContainerFile.dart';
const activeColor = Colors.blueAccent;
const deActiveColor = Color(0xFF111328);
enum Gender{
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleColor = deActiveColor;
  Color feMalecolor = deActiveColor;
  void updateColor(Gender gendertype) {
    if (gendertype == Gender.male){
      maleColor = activeColor;
      feMalecolor = deActiveColor;
    }
    if (gendertype == Gender.female){
      feMalecolor= activeColor;
      maleColor = deActiveColor;
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body:Column(
        children: [
          Expanded(child: Row(
            children: [
              Expanded(child:GestureDetector(
                onTap: ()
                {
                  setState(() {
                    updateColor(Gender.male);
                  });
                },
                child: RepeatContainerCode(
                  colors: maleColor,
                  cardwidget: RepeatTextandICONeWidget(
                    iconData: FontAwesomeIcons.male,
                    label: 'MALE',
                  ),
                ),
              ),
              ),
              Expanded(child: GestureDetector(
                onTap: ()
                {
                  setState(() {
                    updateColor(Gender.female);
                  });
                },
                child: RepeatContainerCode(
                  colors: feMalecolor,
                  cardwidget: RepeatTextandICONeWidget(
                    iconData: FontAwesomeIcons.female,
                    label: 'FEMALE',
                  ),
                ),
              ),
              ),
            ],
          )),
          Expanded(child:new RepeatContainerCode(colors: Color(0xFF1D1E33),),
          ),
          Expanded(child:  Row(
    children: [
    Expanded(child: new RepeatContainerCode(colors: Colors.blue),
    ),
    Expanded(child:new RepeatContainerCode(colors: Colors.blue),
    ),
    ],
    ),),
        ],
      )
    );
  }
}




