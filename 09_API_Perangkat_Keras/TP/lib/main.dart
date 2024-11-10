import 'package:flutter/material.dart';
import 'image_picker_screen.dart'; // Mengimpor file widget yang berisi layar utama

void main() {
  runApp(AplikasiSaya());
}

class AplikasiSaya extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.yellow[700],
          title: Text('Latihan Memilih Gambar'),
          centerTitle: true,
        ),
        body: ImagePickerScreen(), // Memanggil widget layar utama
      ),
    );
  }
}