import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rekomendasi Wisata Banyumas',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<Map<String, String>> places = [
    {
      'name': 'Baturaden',
      'image': 'assets/images/baturaden1.jpg',
      'description':
          'Baturaden adalah objek wisata alam di lereng Gunung Slamet dengan pemandangan indah dan udara sejuk.',
    },
    {
      'name': 'Curug Cipendok',
      'image': 'assets/images/curugdipendok.jpeg',
      'description':
          'Curug Cipendok adalah air terjun yang megah dan terkenal dengan keindahan alam serta sejuknya udara pegunungan.',
    },
    {
      'name': 'Telaga Sunyi',
      'image': 'assets/images/taman.jpeg',
      'description':
          'Telaga Sunyi adalah tempat wisata alam yang menyajikan ketenangan dengan air yang jernih dan suasana asri.',
    },
    {
      'name': 'Taman Andhang Pangrenan',
      'image': 'assets/images/telagasunyi.jpeg',
      'description':
          'Taman kota yang cocok untuk rekreasi keluarga dengan berbagai fasilitas umum yang menarik.',
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rekomendasi Wisata Banyumas'),
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: ListView.builder(
        itemCount: places.length,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment
                  .center, // Mengatur seluruh konten ke tengah
              children: [
                Center(
                  child: Image.network(
                    places[index]['image']!,
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Center(
                    // Menempatkan teks judul di tengah
                    child: Text(
                      places[index]['name']!,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Center(
                    // Menempatkan deskripsi di tengah
                    child: Text(
                      places[index]['description']!,
                      style: const TextStyle(fontSize: 16),
                      textAlign: TextAlign.center, // Teks rata tengah
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: ElevatedButton(
                    onPressed: () {
                      // Aksi ketika tombol diklik
                    },
                    child: const Text('Kunjungi Sekarang'),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
