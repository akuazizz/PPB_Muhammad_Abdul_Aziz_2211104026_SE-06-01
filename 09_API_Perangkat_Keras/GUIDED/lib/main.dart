import 'package:flutter/material.dart';
import 'package:praktikum/image_picker_screen.dart';
import 'package:praktikum/myapi_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: ImageFromGalleryEx(ImageSourceType.camera),
      // MyApiPage(),
    );
  }
}