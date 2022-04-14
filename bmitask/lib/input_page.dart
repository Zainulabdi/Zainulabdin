import 'package:bmitask/constantfile.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'IconTextFile.dart';
import 'ContainerFile.dart';
import 'constantfile.dart';
import 'resultfile.dart';

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
  int SliderWeight=5;
  int sliderAge=5;
  int min=0;
  int max=100;
   Color maleColor = deActiveColor;
  Color feMalecolor = deActiveColor;
  void updateColor(Gender gendertype) {
  if (gendertype == Gender.male)
  {
    maleColor = activeColor;
     feMalecolor = deActiveColor;
   }
  if (gendertype == Gender.female)
  {
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
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(child: Row(
            children: [
              Expanded(
                child: RepeatContainerCode(
                  onPressed: (

                      ){
                    setState(() {
                      selectGender=Gender.male;
                    });
                  },
                  colors: selectGender==Gender.male?activeColor:deActiveColor,
                  cardwidget: RepeatTextandICONeWidget(
                    iconData: FontAwesomeIcons.male,
                    label: '1 To 50',
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
                    label: '1 To 100',
                  ),
                ),
              ),
            ],
          )),
          Expanded(child:new RepeatContainerCode(colors: Color(0xFF1D1E33),
            cardwidget: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('User value',style: kLabelStyle,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:[
                    Text(
                      SliderHeight.toString(),
                      style: kNumberstyle,

                    ),
                  ],
                ),
                Slider(
                  value: SliderHeight.toDouble(),
                  max:
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
    Expanded(child: new RepeatContainerCode(
        colors: Colors.blue,
      cardwidget: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text (
            'Addition',
            style: kLabelStyle,
          ),
          Text(
              SliderWeight.toString(),
              style: kNumberstyle,
          ),
          Row(
            mainAxisAlignment:MainAxisAlignment.center,
            children: [
              RoundIcon(
                iconData: FontAwesomeIcons.minus,
                onPress: (){
                  setState(() {
                    SliderWeight--;
                  });
                } ,
              ),
              SizedBox(width: 10.0,),
              RoundIcon(
                iconData: FontAwesomeIcons.plus,
                onPress: (){
                  setState(() {
                    SliderWeight++;
                  });
                } ,
              ),
            ],
              ),
            ],
            ),
    ),
    ),

      Expanded(child:new RepeatContainerCode(
              colors: Colors.blue,
                cardwidget: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text (
                      'Power',
                      style: kLabelStyle,
                    ),
                    Text(
                      sliderAge.toString(),
                      style: kNumberstyle,
                    ),
                    Row(
                      mainAxisAlignment:MainAxisAlignment.center,
                      children: [
                        RoundIcon(
                          iconData: FontAwesomeIcons.minus,
                          onPress: (){
                            setState(() {
                              sliderAge--;
                            });
                          } ,
                        ),
                        SizedBox(width: 10.0,),
                        RoundIcon(
                          iconData: FontAwesomeIcons.plus,
                          onPress: (){
                            setState(() {
                              sliderAge++;
                            });
                          } ,
                        ),
                      ],
                    ),
                  ],
                ),
    ),
    ),
    ],
    ),
    ),
          GestureDetector(
            onTap:(){
           Navigator.push(context, MaterialPageRoute(builder:(context)=>ResultScreen()));
    },
            child: Container(
              child:  Center(
                child: Text(
                  'calculate',
                  style:kLargeButtonstyele,),
              ),
              color: Color(0xFFEB1555),
              margin: EdgeInsets.only(top: 10.0),
              width: double.infinity,
              height: 80.0,
            ),
          ),
  ],
    ),
);
  }
}

class RoundIcon extends StatelessWidget {
  RoundIcon({@required this.iconData, @required this.onPress});
final IconData iconData;
final Function onPress;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(iconData),
      onPressed: onPress,
      elevation: 6.0,
      constraints: BoxConstraints.tightFor(
        height: 56.0,
        width: 56.0,
      ),
      shape: CircleBorder(),
      fillColor: Colors.black12,

    );
  }
}



