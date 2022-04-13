import 'package:bmi_calculator/ContainerFile.dart';
import 'package:bmi_calculator/constantfile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'constantfile.dart';
import 'constantfile.dart';
import 'input_page.dart';
class ResultScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Result'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
   crossAxisAlignment:CrossAxisAlignment.stretch,
        children: [
Expanded(
  child: Container(
    child: Text(
      'Your Result',
      style: kTitleStyleS2,
    ),
  ),
),
Expanded (
  flex: 5,
    child: RepeatContainerCode(
      colors:  activeColor,
     cardwidget:Column(
        mainAxisAlignment:MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Normal',
            style:kResultTextStyle ,
          ),
          Text(
            '18.3',
            style: kBMITextStyle,
          ),
          Text(
            'BMI is LOW you Should have to work more',
            textAlign: TextAlign.center,
              style: kBodyTextStyle,
          ),
        ],
      )
    ),
),
Expanded(
  child:  GestureDetector(
    onTap:(){
      Navigator.push(context, MaterialPageRoute(builder:(context)=> InputPage()));
    },
    child: Container(
      child:  Center(
        child: Text(
          'Recalculate',
          style:kLargeButtonstyele,),
      ),
      color: Color(0xFFEB1555),
      margin: EdgeInsets.only(top: 10.0),
      width: double.infinity,
      height: 80.0,
    ),
  ),
),

        ],
      ),
    );
  }
}
