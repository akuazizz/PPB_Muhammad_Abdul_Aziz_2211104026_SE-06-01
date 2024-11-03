import 'package:flutter/material.dart';
import 'package:eccomerceapp/models/product.dart';
import 'product_detail_screen.dart';

class ProductListScreen extends StatelessWidget {
  final List<Product> products = [
  Product(
    id: 1,
    name: "Iphone 15 Pro Max",
    price: 9999.99,
    description: "Smartphone kelas atas dengan layar 6,5 inci dan prosesor yang sangat kuat.",
    imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRHMGSH3sMaCziP1cXeBDFOeboJ-j17BVeqLw&s",
  ),
  Product(
    id: 2,
    name: "Laptop Acer Predator",
    price: 12999.99,
    description: "Laptop profesional dengan RAM 16GB, SSD 512GB, dan prosesor Intel i7.",
    imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTvNgayJM9JCE9UbO-iM7n520ERP8dunY9j6w&s",
  ),
  Product(
    id: 3,
    name: "Earbuds Nirkabel",
    price: 1499.99,
    description: "Earbuds nirkabel dengan fitur peredam bising dan daya tahan baterai hingga 24 jam.",
    imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT3nnghevOLGTVk4gxej8YvOOUzImTwO5nRlQ&s",
  ),
  Product(
    id: 4,
    name: "Smart TV 55\"",
    price: 4999.99,
    description: "TV pintar berukuran 55 inci dengan resolusi 4K UHD dan dukungan HDR serta fitur streaming.",
    imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSIRD8H19PnuYI3R94YR_FSpVQh65KLeZ2kVw&s",
  ),
  Product(
    id: 5,
    name: "Konsol Game",
    price: 3999.99,
    description: "Konsol game terbaru dengan dukungan game 4K dan berbagai pilihan permainan.",
    imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRD5Hmh4jG6gpbZ7piQHiDhUisME0w4DdAKyQ&s",
  ),
  Product(
    id: 6,
    name: "Smartwatch S",
    price: 1999.99,
    description: "Jam tangan pintar bergaya dengan fitur pelacak kebugaran dan notifikasi.",
    imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTYVrHSwqwHgBQlrf9EIYHwRI_c8rjbQI8e9Q&s",
  ),
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Produk Elektronik')),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];
          return ListTile(
            leading: Image.network(
              product.imageUrl,
              width: 50,
              height: 50,
              fit: BoxFit.cover,
            ),
            title: Text(product.name),
            subtitle: Text("Rp${product.price.toStringAsFixed(2)}"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProductDetailScreen(product: product),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
