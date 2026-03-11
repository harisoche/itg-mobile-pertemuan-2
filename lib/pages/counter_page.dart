import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int counter = 0;

  void tambah() {
    setState(() {
      counter++;
    });
  }

  void kurang() {
    if (counter > 0) {
      setState(() {
        counter--;
      });
    }
  }

  void reset() {
    setState(() {
      counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Stateful Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Counter:",
              style: TextStyle(fontSize: 20),
            ),
            Text(
              "$counter",
              style: const TextStyle(fontSize: 40),
            ),
            const SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: tambah,
                  child: const Text("Tambah"),
                ),
                const SizedBox(width: 10),
                ElevatedButton(
                  onPressed: kurang,
                  child: const Text("Kurang"),
                ),
                const SizedBox(width: 10),
                ElevatedButton(
                  onPressed: reset,
                  child: const Text("Reset"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}