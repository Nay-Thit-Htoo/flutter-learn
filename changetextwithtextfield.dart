import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "TextField and Button",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Text Flutter"),
        ),
        body: MyWidget(),
      ),
    );
  }
}

class MyWidget extends StatefulWidget {
  _MywidgetState createState() => _MywidgetState();
}

class _MywidgetState extends State<MyWidget> {
  String _textString = "Hello World";
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          _textString,
          style: TextStyle(fontSize: 30),
        ),
        TextField(
          onChanged: (text) {
            _doSomething(text);
          },
        ),
      ],
    );
  }

  void _doSomething(String text) {
    setState(() {
      _textString = text;
    });
  }
}
