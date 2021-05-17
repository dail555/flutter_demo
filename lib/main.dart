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
      home: MyHomePage(),
      theme: ThemeData(primarySwatch: Colors.orange),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Wichaivit App"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Wichaivit Pattaramongkolchai",
                style: TextStyle(fontSize: 18),
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
        ));
  }
}
