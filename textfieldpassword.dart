import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/main.dart';

void main() => runApp(MyApplication());

class MyApplication extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          //create container
          child: Container(
            width: 300,
            child: TextField(
              decoration: InputDecoration(
                  //insert border to textfield
                  border: OutlineInputBorder(),
                  hintText: "Enter Password Here"),

              autofocus: false,
              //password character
              obscureText: true,
            ),
          ),
        ),
      ),
    );
  }
}
