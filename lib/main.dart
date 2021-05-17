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
    FoodMenu('กุ้งเผา', '500', 'assets/image/pic1.jpg'),
    FoodMenu('กะเพราหมู', '80', 'assets/image/pic2.jpg'),
    FoodMenu('ข้าวผัดไข่', '55', 'assets/image/pic3.jpg'),
    FoodMenu('ส้มตำ', '40', 'assets/image/pic4.jpg'),
    FoodMenu('ผัดไท', '60', 'assets/image/pic5.jpg'),
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
              leading: Image.asset(food.img),
              title: Text(
                food.name,
                style: TextStyle(fontSize: 25),
              ),
              subtitle: Text("ราคา ${food.price} บาท"),
              onTap: (){
                print("คุณเลือกเมนู ${food.name} ราคา ${food.price} บาท");
              },
            );
          }),
    );
  }
}
