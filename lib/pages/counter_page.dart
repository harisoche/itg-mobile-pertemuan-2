import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int count = 0;

  
  void tambah() => setState(() => count++);

  
  void _kurangi() {
    setState(() {
      if (count > 0) {
        count--;
      }
    });
  }

  
  void reset() => setState(() => count = 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Stateful Page')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, 
          children: [
            const Text('Counter:', style: TextStyle(fontSize: 18)),
            const SizedBox(height: 8),
            Text(
              '$count',
              style: const TextStyle(fontSize: 64, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Tombol Tambah
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 30, 167, 3), // Warna background
                  foregroundColor: Colors.white, // Warna teks & icon
                ),
                  onPressed: tambah, 
                  child: const Text('Tambah'),
                ),
                const SizedBox(width: 12), // Jarak antar tombol

                // Tombol Kurangi (dengan validasi)
                OutlinedButton(
                  style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red, // Warna background
                  foregroundColor: Colors.white, // Warna teks & icon
                ),
                  onPressed: count > 0 ? _kurangi : null, // Tombol otomatis mati kalau 0
                  child: const Text('Kurangi'),
                ),
                const SizedBox(width: 12),

                // Tombol Reset
                OutlinedButton(
                  onPressed: reset, 
                  child: const Text('Reset'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}