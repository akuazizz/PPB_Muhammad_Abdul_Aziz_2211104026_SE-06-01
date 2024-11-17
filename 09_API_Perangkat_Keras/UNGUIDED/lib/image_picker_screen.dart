import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImageFromGalleryEx extends StatefulWidget {
  @override
  ImageFromGalleryExState createState() => ImageFromGalleryExState();
}

class ImageFromGalleryExState extends State<ImageFromGalleryEx> {
  File? _image;
  late ImagePicker _imagePicker;

  @override
  void initState() {
    super.initState();
    _imagePicker = ImagePicker();
  }

  Future<void> _pickImage(ImageSource source) async {
    try {
      final XFile? image = await _imagePicker.pickImage(
        source: source,
        imageQuality: 50,
        preferredCameraDevice: CameraDevice.front,
      );

      if (image != null) {
        setState(() {
          _image = File(image.path);
        });
      }
    } catch (e) {
      print("Error picking image: $e");
    }
  }

  void _removeImage() {
    setState(() {
      _image = null;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Image Picker'),
        centerTitle: true, 
      ),
      body: Center( 
        child: Padding(
          padding: const EdgeInsets.all(16.0), 
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, 
            children: [
              // Container untuk gambar
              Container(
                width: 250, 
                height: 250, 
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(16), 
                ),
                child: _image != null
                    ? Image.file(_image!, fit: BoxFit.cover)
                    : const Icon(
                        Icons.image,
                        size: 80, 
                        color: Colors.grey,
                      ),
              ),

              const SizedBox(height: 30), 

              // Tombol-tombol
              Wrap(
                alignment: WrapAlignment.center,
                spacing: 15, 
                runSpacing: 15, 
                children: [
                  ElevatedButton.icon(
                    onPressed: () => _pickImage(ImageSource.gallery),
                    icon: const Icon(Icons.photo, size: 30), 
                    label: const Text(
                      "Gallery",
                      style: TextStyle(fontSize: 18), 
                    ),
                  ),
                  ElevatedButton.icon(
                    onPressed: () => _pickImage(ImageSource.camera),
                    icon: const Icon(Icons.camera_alt, size: 30), 
                    label: const Text(
                      "Camera",
                      style: TextStyle(fontSize: 18), 
                    ),
                  ),
                  ElevatedButton.icon(
                    onPressed: _removeImage,
                    icon: const Icon(Icons.delete, size: 30), 
                    label: const Text(
                      "Hapus Gambar",
                      style: TextStyle(fontSize: 18), 
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      padding: const EdgeInsets.symmetric(
                        vertical: 12, 
                        horizontal: 20, 
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}