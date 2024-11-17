import 'package:flutter/material.dart';
import 'package:unguided/image_picker_screen.dart';
import 'package:unguided/myapi_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: ImageFromGalleryEx(),
      // MyApiPage(),
    );
  }
}