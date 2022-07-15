import 'package:flutter/material.dart';
import 'package:tasbeeh/managerlogin.dart';
class Managersignup extends StatelessWidget {
  const Managersignup({key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Manager Signup'),
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
                            radius: 59,
                            child: CircleAvatar(
                              backgroundImage: NetworkImage(
                                  "https://tse2.mm.bing.net/th?id=OIP.S3gzuShCpqfakNNGcBf6qwHaHa&pid=Api&P=0&w=198&h=198"), //NetworkImage
                              radius: 55,
                            ), //CircleAvatar
                          ), //CircleAvatar
                          SizedBox(
                            height: 10,
                          ),
                          TextField(
                            style: TextStyle(fontSize: 15, height: 0.5),
                            decoration: InputDecoration(
                              border: OutlineInputBorder( ),
                              hintText: 'Enter Acadmey Name',
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          TextField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: 'Enter Password',
                            ),
                          ),
                          SizedBox(
                            height:10,
                          ),
                          TextField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: 'Enter Phone number',
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          TextField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: 'Enter Email',
                            ),
                          ),//CircleAvatar
                          SizedBox(
                            height: 10,
                          ),

                          //SizedBox
                          SizedBox(
                            height:10,
                          ),
                          SizedBox(
                            width: 90,
                            child:  ElevatedButton(

                              child: const Text('signup'),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => const managerlogin()),
                                );
                              },
                            ), //RaisedButton
                          ),
                          SizedBox(
                            height:10,
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
