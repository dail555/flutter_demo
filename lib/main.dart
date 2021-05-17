import 'package:flutter/material.dart';
import 'FoodMenu.dart';

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
      theme: ThemeData(primarySwatch: Colors.lightBlue),
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
        title: Text("บัญชีของฉัน"),
      ),
      body: Column(
        children: [

        ],
      ),
    );
  }
}
