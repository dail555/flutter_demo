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
            child: Column(
              children: [
                Text(
                  "Wichaivit Pattaramongkolchai",
                  style: TextStyle(fontSize: 18, color: Colors.blue),
                ),
                Text(
                  "Hello Dart",
                  style: TextStyle(fontSize: 16, color: Colors.blue),
                ),
                Text(
                  "Hello Flutter",
                  style: TextStyle(fontSize: 14, color: Colors.blue),
                ),
              ],
            ),
          )),
      theme: ThemeData(primarySwatch: Colors.orange),
    );
  }
}
