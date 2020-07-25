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
  bool _checkvalue = false;
  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      title: Text("this is my title"),
      value: _checkvalue,
      onChanged: (newValue) {
        _doSomething(newValue);
      },
      controlAffinity: ListTileControlAffinity.leading,
    );
  }

  void _doSomething(bool isChecked) {
    setState(() {
      _checkvalue = isChecked;
    });
  }
}
