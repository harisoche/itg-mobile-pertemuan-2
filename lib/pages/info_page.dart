import 'package:flutter/material.dart';

class InfoPage extends StatelessWidget {
  const InfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Stateless Page')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'Ini StatelessWidget',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'Halaman ini tidak menyimpan state yang berubah.',
              style: TextStyle(fontSize: 16),
            ),
            Text('Nama : Muhamad Saepul Rizal', style: TextStyle(fontSize: 20)),

            Text('NIM : 2306142', style: TextStyle(fontSize: 20)),

            Text('Kelas : Teknik Informatika (6E)', style: TextStyle(fontSize: 20)),
          ],
        ),
      ),
    );
  }
}