import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int count = 0;

  void tambah() => setState(() => count++);
  void reset() => setState(() => count = 0);
  void kurang() => setState((){if (count > 0) count--;}); 
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
                ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    side: const BorderSide(color: Colors.black87),
                    backgroundColor: Colors.green,
                    foregroundColor: Colors.white,
                    padding:const EdgeInsetsDirectional.symmetric(horizontal: 12,vertical: 14),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20))), 
                onPressed: tambah,
                icon:const Icon(Icons.add),
                label: const Text('Tambah')),
                const SizedBox(width: 12),

                OutlinedButton.icon(
                  style: OutlinedButton.styleFrom(
                  side: const BorderSide(color: Colors.black87),
                  backgroundColor: Colors.blueGrey,
                  foregroundColor: Colors.white,
                  padding: const EdgeInsetsDirectional.symmetric(horizontal: 12, vertical: 14),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20))), 
                onPressed: reset, icon: const Icon(Icons.refresh), 
                label: const Text('Reset')),
                const SizedBox(width: 12),

                ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    side: const BorderSide(color: Colors.black87),
                    backgroundColor: Colors.redAccent,
                    foregroundColor: Colors.white,
                    padding: const EdgeInsetsDirectional.symmetric(horizontal: 12, vertical: 14),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20))), 
                onPressed: kurang, icon: const Icon(Icons.remove), 
                label: const Text('Kurang')),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
