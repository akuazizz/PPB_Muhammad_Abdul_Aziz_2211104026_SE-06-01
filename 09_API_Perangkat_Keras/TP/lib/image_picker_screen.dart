import 'package:flutter/material.dart';
import 'image_container.dart';
import 'button_row.dart';
import 'delete_button.dart';

class ImagePickerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,  // Mengubah untuk mengangkat elemen ke atas
          children: [
            // Menambahkan sedikit padding untuk mengangkat ikon gambar
            Padding(
              padding: const EdgeInsets.only(top: 40.0), // Menambah jarak top
              child: ImageContainer(),
            ),
            SizedBox(height: 20),
            ButtonRow(),
            SizedBox(height: 20),
            DeleteButton(),
          ],
        ),
      ),
    );
  }
}