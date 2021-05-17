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
      theme: ThemeData(primarySwatch: Colors.deepOrange),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<FoodMenu> menu = [
    FoodMenu('กุ้งเผา', '500'),
    FoodMenu('กะเพราหมู', '80'),
    FoodMenu('ข้าวผัดไข่', '55'),
    FoodMenu('ส้มตำ', '40'),
    FoodMenu('ผัดไท', '60'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("เมนูอาหาร"),
      ),
      body: ListView.builder(
          itemCount: menu.length,
          itemBuilder: (BuildContext context, int index) {
            FoodMenu food = menu[index];
            return ListTile(
              title: Text(food.name,style: TextStyle(fontSize:25),),
              subtitle: Text("ราคา ${food.price} บาท"),
            );
          }),
    );
  }
}
