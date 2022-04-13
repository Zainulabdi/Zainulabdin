import 'package:bmi_calculator/constantfile.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'IconTextFile.dart';
import 'ContainerFile.dart';
import 'constantfile.dart';

enum Gender{
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectGender;
  int SliderHeight=180;
  // Color maleColor = deActiveColor;
 // Color feMalecolor = deActiveColor;
  //void updateColor(Gender gendertype) {
  //  if (gendertype == Gender.male){
  //    maleColor = activeColor;
  //    feMalecolor = deActiveColor;
  //  }
  //  if (gendertype == Gender.female){
   //   feMalecolor= activeColor;
   //   maleColor = deActiveColor;
  //  }
 // }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body:Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(child: Row(
            children: [
              Expanded(
                child: RepeatContainerCode(
                  onPressed: (){
                    setState(() {
                      selectGender=Gender.male;
                    });
                  },
                  colors: selectGender==Gender.male?activeColor:deActiveColor,
                  cardwidget: RepeatTextandICONeWidget(
                    iconData: FontAwesomeIcons.male,
                    label: 'MALE',
                  ),
                ),

              ),
              Expanded(
                child: RepeatContainerCode(
                  onPressed: (){
                    setState(() {
                      selectGender=Gender.female;
                    });
                  },
                  colors: selectGender==Gender.female?activeColor:deActiveColor,
                  cardwidget: RepeatTextandICONeWidget(
                    iconData: FontAwesomeIcons.female,
                    label: 'FEMALE',
                  ),
                ),
              ),
            ],
          )),
          Expanded(child:new RepeatContainerCode(colors: Color(0xFF1D1E33),
            cardwidget: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('HEIGHT',style: kLabelStyle,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:[
                    Text(
                      SliderHeight.toString(),
                      style: kNumberstyle,

                    ),
                    Text(
                      'cm',
                      style: kLabelStyle,
                    ),



                  ],
                ),
                Slider(
                  value: SliderHeight.toDouble(),
                  min: 120.0,
                  max: 220.0,
                  activeColor: Colors.deepOrange,
                  inactiveColor: Colors.green,
                  onChanged: (double newValue){
                    setState(() {
                      SliderHeight=newValue.round();

                    });
                  },
                ),

              ],
            ),
          ),
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




