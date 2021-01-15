import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class ResultPage extends StatefulWidget {
  _ResultPageState createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  var finalScore;
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
      title: Text("Quiz App",style: TextStyle(letterSpacing: 2.0),),
      centerTitle: false,
      ),
      body: Center(
        child: Center(
          child: Text('Your Score:', style: TextStyle(fontSize: 50,)),

        ),
      ),
    );
  }
    
}