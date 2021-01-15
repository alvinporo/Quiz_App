import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/modules/question_page.dart';

class LoginPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final fieldText = TextEditingController();
    void clearText(){
      fieldText.clear();
    }
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(left: 16, right: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Align(
                alignment: Alignment.center,
                child: Text(
                  'Math Quiz',
                  style: TextStyle(
                      fontSize: 40,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      height: 3),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: new Image.asset('images/logo.png'),

              ),
              Column(
                children: <Widget>[
                  TextField(
                    style: TextStyle(fontSize: 20, color: Colors.black),
                    decoration: InputDecoration(
                      labelText: "Enter Name",
                      labelStyle: TextStyle(fontSize: 14,color: Colors.grey.shade400),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Colors.grey.shade300,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                            color: Colors.red
                        ),
                      )
                    ),
                      controller: fieldText,
                  ),
                  SizedBox(height: 20,),
                  Container(
                    height: 50,
                    width: double.infinity,
                    child:  FlatButton(
                      onPressed:(){
                          clearText();
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
                          child: Text("Login",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                        ),
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6),
                      ),
                    ),
                  ),
                  SizedBox(height: 150,),
                  Container(
                    height: 50,
                    width: double.infinity,
                  ),
                ]
              )
            ],

          ),
        ),
      ),
    );
  }
  
}
