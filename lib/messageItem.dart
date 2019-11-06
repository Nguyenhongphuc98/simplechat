import 'package:flutter/material.dart';

class MessageItem extends StatelessWidget{

  final String message;
  final String name;
  
  MessageItem({this.message,this.name});

  @override
  Widget build(BuildContext context) {
    
    return new Container(
      child: new Row(
        children: <Widget>[
          new CircleAvatar(
            child: new Text(name[0]),
          ),
          new Container(
            margin: new EdgeInsets.symmetric(horizontal: 8.0),
            child: new Column(
              children: <Widget>[
                new Text(name),
                new Container(
                    margin: const EdgeInsets.only(top: 5.0),
                    child: new Text(message),
                  ),
              ],
            )
          )
        ],
      ),
    );
  }
  
}