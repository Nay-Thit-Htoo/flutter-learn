import 'package:flutter/material.dart';

//run main activity
void main() {
  runApp(MaterialApp(
    title: "Navigation Basics",
    home: FirstRoute(),
  ));
}

//first activity
class FirstRoute extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("First Route"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SecondRout()),
            );
          },
          child: Text('Open route'),
        ),
      ),
    );
  }
}
//second activity
class SecondRout extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //for application bar
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Route"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Open route'),
        ),
      ),
    );
  }
}
