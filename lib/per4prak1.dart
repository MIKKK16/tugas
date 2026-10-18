import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Bagian Judul (Title Section)
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    'Wisata Gunung di Batu',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                const Text(
                  'Batu, Malang, Indonesia ',
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ),
          const Icon(Icons.star, color: Colors.red),
          const Text('41'),
        ],
      ),
    );

    Color color = Theme.of(context).primaryColor;

    // Bagian Tombol (Button Section)
    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.call, 'CALL'),
        _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
        _buildButtonColumn(color, Icons.share, 'SHARE'),
      ],
    );

    // Bagian Teks (Text Section)
    Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: const Text(
        'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese Alps. '
        'Situated 1,578 meters above sea level, it is one of the larger Alpine Lakes. '
        'A gondola ride from Kandersteg, followed by a half-hour walk through pastures '
        'and pine forest, leads you to the lake, which warms to 20 degrees Celsius in the summer. '
        'Activities enjoyed here include rowing, and riding the summer toboggan run.\n\n'
        'Dikerjakan oleh: David - 23520001',
        softWrap: true,
      ),
    );

    return MaterialApp(
      title: 'Flutter layout demo: [David & 23520001]',
      home: Scaffold(
        appBar: AppBar(title: const Text('Flutter layout demo')),
        // Menggunakan ListView agar halaman bisa di-scroll
        body: ListView(
          children: [
            Image.asset(
              'logo1.jpeg',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            textSection,
          ],
        ),
      ),
    );
  }

  // Fungsi pembantu untuk membuat kolom tombol
  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}
