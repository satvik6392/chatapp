import 'dart:ui';

import 'package:flutter/material.dart';
import 'chatscreen.dart';



class homepage extends StatelessWidget {
  const homepage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("Chat App"),
        titleTextStyle: TextStyle(
          color: Colors.black,
          ),
          ),
          body: chatscreen(),
    );
  }
}