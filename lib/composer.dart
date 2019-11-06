import 'package:flutter/material.dart';
import 'package:simple_chat/messageItem.dart';

class Composer extends StatefulWidget {

  Function addMessage;
  final TextEditingController textController;

  Composer({this.addMessage,this.textController});

  @override
  State<StatefulWidget> createState() => _Composer();
}

class _Composer extends State<Composer> {
  

  @override
  Widget build(BuildContext context) {
    return new Container(
      margin: const EdgeInsets.symmetric(horizontal: 8.0),
      child: new Row(
        children: <Widget>[
          new Flexible(
            child: new TextField(
              controller: widget.textController,
              obscureText: false,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Type your message',
                
              ),
            ),
          ),
          new IconButton(
            icon: new Icon(Icons.send),
            onPressed: () {
              widget.addMessage();
              
            },
          )
        ],
      ),
    );
  }
}
