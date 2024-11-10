import 'package:flutter/material.dart';

class DeleteButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: Text('Hapus Gambar'),
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.yellow[700],  
        foregroundColor: Colors.black,        
        padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
      ),
    );
  }
}