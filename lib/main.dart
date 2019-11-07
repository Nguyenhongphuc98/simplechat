import 'package:flutter/material.dart';
import 'package:simple_chat/messageItem.dart';
import 'package:simple_chat/wrapper.dart';
import 'composer.dart';
import 'messageBuilder.dart';
import 'messageItem.dart';
import 'model/user.dart';

void main() => runApp(MyApp());

User userLogined;

class MyApp extends StatelessWidget {
  
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      title: 'simple chat',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Wrapper(),
    );
  }
}