import 'package:flutter/material.dart';
import 'package:simple_chat/services/signIn.dart';

class Authenticate extends StatefulWidget {

  Function logIn;

  Authenticate({this.logIn});

  @override
  _AuthenticateState createState() => _AuthenticateState();
}

class _AuthenticateState extends State<Authenticate> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SignIn(login: widget.logIn,)
    );
  }
}