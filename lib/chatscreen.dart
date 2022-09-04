import 'package:chatapp/chat_message.dart';
import 'package:flutter/material.dart';

class chatscreen extends StatefulWidget {
  const chatscreen({ Key? key }) : super(key: key);

  @override
  State<chatscreen> createState() => _chatscreenState();
}

class _chatscreenState extends State<chatscreen> {
  final List<chat_message> _message = <chat_message> [];
  final TextEditingController _t1 = new TextEditingController();

  void _submitted(String text)
  {
    _t1.clear();
    chat_message message = new chat_message(text: text,);
    setState(() {
      _message.insert(0, message);
    });
  }
  Widget _textcomposerwidget()
  {
    return IconTheme(
      data: IconThemeData(

      ),
      child: new Container(
        margin: EdgeInsets.symmetric(horizontal: 8.0),
        child: new Row(
          children: <Widget>[
            Flexible(
              child: TextField(
                    decoration: InputDecoration.collapsed(
              hintText: "send a message",
                    hintStyle: new TextStyle(color: Colors.red,)),
                    controller: _t1,
                    onSubmitted: _submitted,
                  ),
            ),
              new Container(
                margin: const EdgeInsets.symmetric(horizontal: 4.0,),
               child: new IconButton(
                onPressed: () => _submitted(_t1.text),
                icon: new Icon(Icons.send)),
              )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
            children: <Widget>[
              Flexible(child: ListView.builder(
                padding: EdgeInsets.all(8.0),
                reverse: true,
                itemBuilder: (_,int index) => _message[index],
                itemCount: _message.length,
                )
                ),
                Divider(height: 1.0,),
                new Container(
                  decoration: BoxDecoration(color: Theme.of(context).cardColor),
                  child: _textcomposerwidget(),
                ),
            ],
          )
          ;
  }
}