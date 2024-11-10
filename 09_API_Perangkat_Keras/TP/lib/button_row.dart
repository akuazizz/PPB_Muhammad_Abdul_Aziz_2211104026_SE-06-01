import 'package:flutter/material.dart';

class ButtonRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton.icon(
          onPressed: () {},
          icon: Icon(Icons.camera_alt),
          label: Text('Camera'),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.yellow[700],
            foregroundColor: Colors.black,
          ),
        ),
        SizedBox(width: 10),
        ElevatedButton.icon(
          onPressed: () {},
          icon: Icon(Icons.photo),
          label: Text('Gallery'),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.yellow[700],
            foregroundColor: Colors.black,
          ),
        ),
      ],
    );
  }
}
