import 'package:flutter/material.dart';
import 'package:simple_chat/authenticate.dart';
import 'package:simple_chat/services/auth.dart';

import '../main.dart';

class SignIn extends StatefulWidget {

  Function login;

  SignIn({this.login});

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {

  final AuthService _auth= AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(1, 23, 15, 22),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(1, 59, 62, 77),
        elevation: 0.0,
        title: Text('Signin to chat app'),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20.0,horizontal: 50.0),
        child: RaisedButton(
          child: Text("signin anon"),
          onPressed: () async{
            dynamic result=await _auth.signInAnon();

            if(result==null)
              print('err to login');
              else{
                print(result);
                userLogined=result;
                widget.login(); 
              }
          },
        ),
      ),
    );
  }
}