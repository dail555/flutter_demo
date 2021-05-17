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
      theme: ThemeData(primarySwatch: Colors.deepOrange),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int number = 0;

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
              number.toString(),
              style: TextStyle(fontSize: 45, color: Colors.blue),
            ),
            Text(
              "กดปุ่มเพื่อเพิ่มจำนวน",
              style: TextStyle(fontSize: 14, color: Colors.blue),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            number++;
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
