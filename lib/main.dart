import 'package:flutter/material.dart';
import 'pages/info_page.dart';
import 'pages/counter_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const String routeInfo = '/info';
  static const String routeCounter = '/counter';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Navigation Demo',
      // Saya mengubah tema aplikasi dengan menggunakan Material 3 dan memberikan warna utama yang cerah agar tampilan lebih menarik.
      theme: ThemeData(useMaterial3: true, colorSchemeSeed: const Color.fromARGB(255, 63, 171, 181)),

      // halaman utama yang ditampilkan saat aplikasi dijalankan
      initialRoute: '/',
      // daftar rute yang tersedia dalam aplikasi
      routes: {
        '/': (context) => const HomeMenuPage(),
        routeInfo: (context) => const InfoPage(),
        routeCounter: (context) => const CounterPage(),
      },
    );
  }
}

class HomeMenuPage extends StatelessWidget {
  const HomeMenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Saya menambahkan properti centerTitle dengan nilai true pada AppBar untuk memastikan bahwa judul menu berada di tengah. 
      appBar: AppBar(title: const Text('Menu'), centerTitle: true, titleTextStyle: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, MyApp.routeInfo);
              },
              child: const Text('Buka Stateless Page'),
            ),
            const SizedBox(height: 12),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, MyApp.routeCounter);
              },
              child: const Text('Buka Stateful Page'),
            ),
          ],
        ),
      ),
    );
  }
}