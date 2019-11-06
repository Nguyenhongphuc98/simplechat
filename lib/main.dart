import 'package:flutter/material.dart';
import 'package:simple_chat/messageItem.dart';
import 'composer.dart';
import 'messageBuilder.dart';
import 'messageItem.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'simple chat',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ChatPage(title: 'chat room'),
    );
  }
}

class ChatPage extends StatefulWidget {
  ChatPage({Key key, this.title}) : super(key: key);

  final String title;

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
          new MessageBuilder(
            messages: _messages,
          ),
          new Composer(addMessage: addMessage,textController: _textController,),
        ],
      ),
    );
  }
}
