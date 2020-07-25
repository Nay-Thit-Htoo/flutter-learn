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
    return RaisedButton(
      child: Text('Show Alert Box'),
      onPressed: () {
        //called alert dialog box function
        _doSomething();
      },
    );
  }

  void _doSomething() {
    //for ok button for alert dialog box
    Widget okButton = FlatButton(
      child: Text("Ok"),
      onPressed: () {
        Navigator.pop(context);
      },
    );

    
    //create alert dialog box
    AlertDialog alert = AlertDialog(
      title: Text("Dialog Title"),
      content: Text("This is a flutter AlertDialog"),
      actions: [okButton],
    );

    //it is default function for alert dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}
