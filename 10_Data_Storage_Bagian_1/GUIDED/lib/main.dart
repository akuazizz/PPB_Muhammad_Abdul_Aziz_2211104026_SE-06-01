import 'package:flutter/material.dart';
import 'package:guided/view/my_db_view.dart'; 

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Guided Data Storage',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyDatabaseView(),
    );
  }
}
