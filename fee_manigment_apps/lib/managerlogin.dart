import 'package:flutter/material.dart';
import 'Managersignup.dart';
class counttasbeeh extends StatelessWidget {
  const counttasbeeh({key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Manager'),
      ),
      body: Column(
    children: [
    Expanded(child: Row(
    children: [
    Expanded(
        child: Card(
        elevation: 70,
        shadowColor: Colors.black,
        color: Colors.white,
        child: SizedBox(
          width: 200,
          height: 600,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.black12,
                  radius: 69,
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://tse2.mm.bing.net/th?id=OIP.S3gzuShCpqfakNNGcBf6qwHaHa&pid=Api&P=0&w=198&h=198"), //NetworkImage
                    radius: 65,
                  ), //CircleAvatar
                ), //CircleAvatar
                Text(
                    ' Manager Login'
                ),
                SizedBox(
                  height: 30,
                ),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter Acadmey Name',
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter Password',
                  ),
                ),//CircleAvatar
                SizedBox(
                  height: 10,
                ),
                Text(
                    ' Forget Password'
                ),
                //SizedBox
                SizedBox(
                  height:10,
                ),
                SizedBox(
                  width: 90,
                  child:  ElevatedButton(

                    child: const Text('Login'),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Managersignup()),
                      );
                    },
                  ), //RaisedButton
                ),
                SizedBox(
                  height:10,
                ),
                SizedBox(
                  width: 90,
                  child:  ElevatedButton(

                    child: const Text('Sign up'),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Managersignup()),
                      );
                    },
                  ), //RaisedButton
                ),
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
