import 'package:flutter/material.dart';

void main() {
  print("Starting..");
  runApp(MyApp());
  print("Application is start!");
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My App",
      home: Scaffold(
          appBar: AppBar(
            title: Text("Wichaivit App"),
          ),
          body: Center(
            child: Text("Wichaivit Pattaramongkolchai"),
          )),
      theme: ThemeData(primarySwatch: Colors.orange),
    );
  }
}
