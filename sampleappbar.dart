import 'package:flutter/material.dart';

void main() => runApp(MyAppBar());

class MyAppBar extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "TextField and Button",
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.redAccent,
          leading: Icon(Icons.arrow_back),
          title: Text("Sample App Bar"),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.directions_bike),
              onPressed: () {},
            ),
            IconButton(icon: Icon(Icons.directions_bus), onPressed: null),
            PopupMenuButton(itemBuilder: (BuildContext context) {
              return [
                PopupMenuItem(child: Text('Boat')),
                PopupMenuItem(child: Text('Train')),
              ];
            })
          ],
        ),
        body: Center(
          child: Text("Hello"),
        ),
      ),
    );
  }
}
