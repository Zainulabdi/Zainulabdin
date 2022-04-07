import 'package:flutter/material.dart';
import 'quiz_brain.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'dart:async';

QuizBrain quizBrain = QuizBrain();

void main() {
  runApp(SplashScreen());
}
class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Splash Screen',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 6),
            () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => QuizApp())));
  } //<- Creates an object that fetches an image.

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
          children: <Widget>[
            Image(image: AssetImage("asset/mainpic.gif"), height: 500),
            Text("Zain-ul-abdin", style: TextStyle(fontSize: 40)),
            Text("FA19-BCS-107", style: TextStyle(fontSize: 40)),
            SizedBox(
              height: 5,
            ),
            CircularProgressIndicator()
          ],
        ));
  }
}


class QuizApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          leading: Icon(Icons.account_box_outlined),
          title: Text('Quiz APP'),
          backgroundColor: Colors.deepOrange,
        ),
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: QuizPage(),
          ),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Icon> scoreKeeper = [];

  // Timer _timer;
  //int _start = 5;

  int _counter=10;
  Timer _timer;
  void timerstart()
  {
    _counter=20;
    _timer=Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        if(_counter>0)
        {
          _counter--;
        }
        //questionBrain
        else{
          if(quizBrain.isFinished()==false)
          {
            _counter=10;
            quizBrain.nextQuestion();
            scoreKeeper.add(
              Icon(
                Icons.close,
                color: Colors.white,
              ),
            );
          }

        }
      });
    });
  }


  /*void startTimer() {
    const oneSec = const Duration(seconds: 1);
    _timer = new Timer.periodic(
      oneSec,
          (Timer timer) {
        if (_start == 0) {
          setState(() {
            timer.cancel();
          });
        } else {
          setState(() {
            _start--;
          });
        }
      },
    );
  }*/

  void checkAnswer(bool userPickedAnswer) {
    bool correctAnswer = quizBrain.getCorrectAnswer();
    setState(() {
      if (quizBrain.isFinished() == true) {
        Alert(
          context: context,
          title: 'Finshed',
          desc: 'You\'ve reached the end of the quiz.',
        ).show();
        quizBrain.reset();
        scoreKeeper = [];
      } else {
        if (userPickedAnswer == correctAnswer) {
          scoreKeeper.add(Icon(
            Icons.check,
            color: Colors.deepOrange,
          ));
        } else {
          scoreKeeper.add(Icon(
            Icons.close,
            color: Colors.white,
          ));
        }
        quizBrain.nextQuestion();
      }
    });
  }

  @override

  /*void dispose() {
    _timer.cancel();
    super.dispose();
  }*/

  void initState()
  {
    super.initState();
    timerstart();
  }

  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[


        // Center(
        // child: Text(
        //   "$_start",style: TextStyle(color: Colors.white),),
        //),

        Expanded(child: Center(
          child: Text("$_counter",style: TextStyle(
            fontSize: 25.0,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),),
        ),),


        Expanded(
          flex: 6,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                quizBrain.getQuestionText(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: FlatButton(
              textColor: Colors.white,
              color: Colors.deepOrange,
              child: Text(
                'True',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
              onPressed: () {
                checkAnswer(true);
                //The user picked true.
              },
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: FlatButton(
              color: Colors.white,
              child: Text(
                'False',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.black,
                ),
              ),
              onPressed: () {
                checkAnswer(false);
                //The user picked false.
              },
            ),
          ),
        ),
        Row(
          children: scoreKeeper,
        ),
      ],
    );
  }
}

/*
question1: 'You can lead a cow down stairs but not up stairs.', false,
question2: 'Approximately one quarter of human bones are in the feet.', true,
question3: 'A slug\'s blood is green.', true,
*/
