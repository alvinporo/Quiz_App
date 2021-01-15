import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz_view/quiz_view.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_spinkit/flutter_spinkit.dart';


class QuestionPage extends StatefulWidget {
  _QuestionPageState createState() => _QuestionPageState();
}

class _QuestionPageState extends State<QuestionPage> {
  final String url = "http://192.168.1.4:8000/api/list";
  List data;
  var finalScore = 0;
  var score = 0;
  Widget build(BuildContext context) {
    return FutureBuilder<http.Response>(
        future: http
            .get(Uri.encodeFull(url), headers: {"Accept": "application/json"}),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Container(
              alignment: Alignment.center,
              child: Text('Error'),
            );
          }

          if (snapshot.connectionState == ConnectionState.done) {
            data = json.decode(snapshot.data.body);
            return Scaffold(
              backgroundColor: Colors.blue,
              appBar: AppBar(
                title: Text("Quiz App",style: TextStyle(letterSpacing: 2.0),),
                centerTitle: false,
              ),
              body: SingleChildScrollView(
                child: Center(
                  child: Column(
                    children: [
                      QuizView(
                          showCorrect: true,
                          questionTag: 'Question 1',
                          questionColor: Colors.black,
                          tagColor: Colors.yellowAccent,
                          backgroundColor: Colors.white70,
                          tagBackgroundColor: Colors.red.shade300,
                          answerColor: Colors.white,
                          answerBackgroundColor: Colors.deepPurple,
                          question: '${(data[0]['question'])}',
                          height: 580,
                          width: MediaQuery.of(context).size.width,
                          rightAnswer: '${(data[0]['Answer'])}',
                          wrongAnswers: ['${(data[0]['B'])}','${(data[0]['C'])}','${(data[0]['D'])}'],
                          onRightAnswer: (){
                            finalScore++;
                            Alert(
                              context: context,
                              title: 'Score: $finalScore /5',

                            ).show();
                          },
                          onWrongAnswer: (){
                            // ignore: unnecessary_statements
                            finalScore + 0;
                            Alert(
                              context: context,
                              title: 'Score: $finalScore /5',
                            ).show();
                          }
                      ),
                      QuizView(
                          showCorrect: true,
                          questionTag: 'Question 2',
                          questionColor: Colors.black,
                          tagColor: Colors.yellowAccent,
                          backgroundColor: Colors.white70,
                          tagBackgroundColor: Colors.red.shade300,
                          answerColor: Colors.white,
                          answerBackgroundColor: Colors.deepPurple,
                          question: '${(data[1]['question'])}',
                          height: 580,
                          width: MediaQuery.of(context).size.width,
                          rightAnswer: '${(data[1]['Answer'])}',
                          wrongAnswers: ['${(data[1]['A'])}','${(data[1]['B'])}','${(data[1]['D'])}'],
                          onRightAnswer: (){
                            finalScore++;
                            Alert(
                              context: context,
                              title: 'Score: $finalScore /5',
                            ).show();
                            
                          },
                          onWrongAnswer: (){
                            // ignore: unnecessary_statements
                            finalScore + 0;
                            Alert(
                              context: context,
                              title: 'Score: $finalScore /5',
                            ).show();
                          }
                      ),
                      QuizView(
                          showCorrect: true,
                          questionTag: 'Question 3',
                          questionColor: Colors.black,
                          tagColor: Colors.yellowAccent,
                          backgroundColor: Colors.white70,
                          tagBackgroundColor: Colors.red.shade300,
                          answerColor: Colors.white,
                          answerBackgroundColor: Colors.deepPurple,
                          question: '${(data[2]['question'])}',
                          height: 580,
                          width: MediaQuery.of(context).size.width,
                          rightAnswer: '${(data[2]['Answer'])}',
                          wrongAnswers: ['${(data[2]['A'])}','${(data[2]['B'])}','${(data[2]['D'])}'],
                          onRightAnswer: (){
                            finalScore++;
                            Alert(
                              context: context,
                              title: 'Score: $finalScore /5',
                            ).show();
                          },
                          onWrongAnswer: (){
                            // ignore: unnecessary_statements
                            finalScore + 0;
                            Alert(
                              context: context,
                              title: 'Score: $finalScore /5',
                            ).show();
                          }
                      ),
                      QuizView(
                          showCorrect: true,
                          questionTag: 'Question 4',
                          questionColor: Colors.black,
                          tagColor: Colors.yellowAccent,
                          backgroundColor: Colors.white70,
                          tagBackgroundColor: Colors.red.shade300,
                          answerColor: Colors.white,
                          answerBackgroundColor: Colors.deepPurple,
                          question: '${(data[3]['question'])}',
                          height: 580,
                          width: MediaQuery.of(context).size.width,
                          rightAnswer: '${(data[3]['Answer'])}',
                          wrongAnswers: ['${(data[3]['A'])}','${(data[3]['B'])}','${(data[3]['D'])}'],
                          onRightAnswer: (){
                            finalScore++;
                            Alert(
                              context: context,
                              title: 'Score: $finalScore /5',
                            ).show();
                          },
                          onWrongAnswer: (){
                            // ignore: unnecessary_statements
                            finalScore + 0;
                            Alert(
                              context: context,
                              title: 'Score: $finalScore /5',
                            ).show();
                          }
                      ),
                      QuizView(
                          showCorrect: true,
                          questionTag: 'Question 5',
                          questionColor: Colors.black,
                          tagColor: Colors.yellowAccent,
                          backgroundColor: Colors.white70,
                          tagBackgroundColor: Colors.red.shade300,
                          answerColor: Colors.white,
                          answerBackgroundColor: Colors.deepPurple,
                          question: '${(data[4]['question'])}',
                          height: 580,
                          width: MediaQuery.of(context).size.width,
                          rightAnswer: '${(data[4]['Answer'])}',
                          wrongAnswers: ['${(data[4]['A'])}','${(data[4]['C'])}','${(data[4]['D'])}'],
                          onRightAnswer: (){
                            finalScore++;
                            Alert(
                              context: context,
                              title: 'Score: $finalScore /5',
                            ).show();},
                          onWrongAnswer: (){
                            // ignore: unnecessary_statements
                            finalScore + 0;
                            Alert(
                              context: context,
                              title: 'Wrong!',
                            ).show();
                          }
                      ),
                      SizedBox(height: 20,),
                      Container(
                        height: 40,
                        width: double.infinity,
                        child:  FlatButton(
                          onPressed:(){
                            Navigator.of(context)
                                .push(
                                MaterialPageRoute(
                                    builder: (context) => QuestionPage()
                                )
                            );
                          },
                          child: Ink(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6),
                                gradient: LinearGradient(
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight,
                                  colors: [
                                    Color(0xffff5f6d),
                                    Color(0xffff5f6d),
                                    Color(0xffffc371),
                                  ],
                                )
                            ),
                            child: Container(
                              alignment: Alignment.center,
                              constraints: BoxConstraints(maxWidth: double.infinity,minHeight: 50,),
                              child: Text("Try Again!",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20,),textAlign: TextAlign.center,),
                            ),
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          }
          return SpinKitRotatingCircle(
            color: Color(0xFF5ce1e6),
            size: 50.0,
          );
        });
  }
}