import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyButton());

class MyButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Rasie Button Exercise"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                child: Text("Button 1"),
                onPressed: tumpfunction,
                color: Color(0xffFF1744),
                textColor: Colors.white,
                splashColor: Colors.grey,
                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
              ),
              RaisedButton(
                child: Text("Button 2"),
                onPressed: tumpfunction,
                color: Color(0xffFF1744),
                textColor: Colors.white,
                splashColor: Colors.red,
                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
              ),
              RaisedButton(
                child: Text("Button 3"),
                onPressed: tumpfunction,
                color: Color(0xffFF1744),
                textColor: Colors.white,
                splashColor: Colors.grey,
                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
              )
            ],
          ),
        ),
      ),
    );
  }

  tumpfunction() {
    print("Function on Click Event Called.");
  }
}
