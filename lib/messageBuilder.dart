import 'package:flutter/material.dart';
import 'package:simple_chat/messageItem.dart';

class MessageBuilder extends StatefulWidget {
  List<MessageItem> messages = <MessageItem>[];

  MessageBuilder({this.messages});

  @override
  State<StatefulWidget> createState() => _MessageBuilder();
}

class _MessageBuilder extends State<MessageBuilder> {
  
  //final TextEditingController _textController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return new Flexible(
      child: new ListView.builder(
      padding: new EdgeInsets.all(8.0),
      reverse: true,
      itemBuilder: (_, int index) => widget.messages[index],
      itemCount: widget.messages.length,
    ));
  }
}
