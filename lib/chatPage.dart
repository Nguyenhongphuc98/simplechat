import 'package:flutter/material.dart';

import 'composer.dart';
import 'messageBuilder.dart';
import 'messageItem.dart';

class ChatPage extends StatefulWidget {
  ChatPage({Key key, this.title,this.uid}) : super(key: key);

  final String title;
  String uid;

  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  
  final List<MessageItem> _messages = <MessageItem>[];
  final TextEditingController _textController = new TextEditingController();

  Function addMessage() {
    print("clicked");
    MessageItem messageItem = new MessageItem(
      message: _textController.text,
      name: "Phuc",
    );
    _textController.clear();
    setState(() {
      _messages.insert(0, messageItem);
    });
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[
          new Text("hello: "+widget.uid),
          new MessageBuilder(
            messages: _messages,
          ),
          new Composer(addMessage: addMessage,textController: _textController,),
        ],
      ),
    );
  }
}
