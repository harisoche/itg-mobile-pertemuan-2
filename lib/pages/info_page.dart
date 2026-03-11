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
            
            Text(
              'Nama : Silfi Nur Halimah',
              style: TextStyle(fontSize: 18),
            ),

            Text(
              'NIM : 2306137',
              style: TextStyle(fontSize: 18),
            ),

            Text(
              'Kelas : Informatika - E',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}