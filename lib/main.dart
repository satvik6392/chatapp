import 'package:flutter/material.dart';
import 'homepage.dart';
import 'chatscreen.dart';

void main() {
  runApp(chatapp());
}

class chatapp extends StatelessWidget {
  const chatapp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "chat app",
      home: new homepage(),
    );
  }
}