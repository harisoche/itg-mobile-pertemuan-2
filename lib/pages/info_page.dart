import 'package:flutter/material.dart';

class InfoPage extends StatelessWidget {
  const InfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Stateless Page',
          // Saya menambahkan properti textAlign untuk menempatkan teks menu di tengah.
          textAlign: TextAlign.center, 
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        // Saya membungkus seluruh konten dengan widget Center untuk memastikan bahwa nama dan NIM berada di tengah layar.
        child: Center( 
          // Saya membungkus kolom nama dan NIM dengan Container yang memiliki warna biru sebagai latar belakag. 
          // Selain itu, saya menambahkan padding dan border radius untuk meningkatkan tampilan visualnya.
          child: Container( 
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.blue, 
              borderRadius: BorderRadius.circular(8), 
            ),
            child: Column(
              // Saya menambahkan properti mainAxisSize dengan nilai MainAxisSize.min untuk memastikan 
              // bahwa kolom hanya mengambil ruang yang diperlukan oleh kontennya.
              mainAxisSize: MainAxisSize.min, 
              // Saya menambahkan properti crossAxisAlignment dengan nilai CrossAxisAlignment.center 
              // untuk memastikan bahwa teks nama dan NIM berada di tengah secara horizontal.
              crossAxisAlignment: CrossAxisAlignment.center, 
              children: const [
                Text(
                  'Karina Hoirun Nisa',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.white, 
                  ),
                ),
                // Saya menambahkan widget SizedBox dengan tinggi 8 untuk memberikan jarak vertikal antara teks nama dan NIM.
                SizedBox(height: 8), 
                Text(
                  '2306114',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.white, 
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}