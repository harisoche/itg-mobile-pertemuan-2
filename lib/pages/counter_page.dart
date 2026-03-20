import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int count = 0;

  void tambah() => setState(() => count++);
  // Tugas: Buat fungsi untuk mengurangi nilai count, pastikan tidak bisa kurang dari 0
  // Saya menambahkan fungsi `kurang` yang akan mengurangi nilai `count` jika `count` lebih besar dari 0. 
  // Jika `count` sudah 0, maka fungsi ini tidak akan melakukan apa-apa.
  void kurang() {
    if (count > 0) setState(() => count--);
  } 
  void reset() => setState(() => count = 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Stateful Page')),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text('Counter:', style: TextStyle(fontSize: 18)),
            const SizedBox(height: 8),
            Text(
              '$count',
              style: const TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                ElevatedButton(onPressed: tambah, child: const Text('Tambah')),
                const SizedBox(width: 12),
                // Tugas: Tambahkan tombol untuk mengurangi nilai count, pastikan memanggil fungsi yang sudah dibuat
                // Saya menambahkan tombol `Kurang` yang akan memanggil fungsi `kurang` ketika ditekan.
                ElevatedButton(onPressed: kurang, child: const Text('Kurang')),
                const SizedBox(width: 12),
                OutlinedButton(onPressed: reset, child: const Text('Reset')),
              ],
            ),
          ],
        ),
      ),
    );
  }
}