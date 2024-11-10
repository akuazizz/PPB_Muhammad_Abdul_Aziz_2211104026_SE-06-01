import 'package:flutter/material.dart';

class ImageContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(8.0),
        color: Colors.grey[200],
      ),
      width: 200,
      height: 200,
      child: Icon(
        Icons.image_outlined,
        size: 100,
        color: Colors.grey,
      ),
    );
  }
}