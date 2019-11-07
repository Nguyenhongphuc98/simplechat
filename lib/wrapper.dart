import 'package:flutter/material.dart';
import 'package:simple_chat/authenticate.dart';
import 'package:simple_chat/main.dart';
import 'package:simple_chat/model/user.dart';

import 'chatPage.dart';

class Wrapper extends StatefulWidget {

  Wrapper();

  @override
  _WrapperState createState() => _WrapperState();
}

class _WrapperState extends State<Wrapper> {

  bool isLogin=false;


  Function Login(){
    
    setState(() =>isLogin=!isLogin);
    print(userLogined.uid);
  }

  @override
  Widget build(BuildContext context) {
    if(isLogin==false)
      return Authenticate(logIn: Login,);
     else
      return ChatPage(title: "Chat room",uid: userLogined.uid,);
  }
}