import 'package:flutter/material.dart';
import 'chatscreen.dart';

const String name = "satvik";

class chat_message extends StatelessWidget {
  final String text;
  chat_message({this.text = ""});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(right: 10.0),
            child: CircleAvatar(child: Text(name[0]),),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              new Text(name,style: Theme.of(context).textTheme.subtitle1,),
              new Container(
                margin: const EdgeInsets.only(top: 2.0),
                child: Text(text),
              ),
            ],
          ),
        ],
      ),
    );
  }
}