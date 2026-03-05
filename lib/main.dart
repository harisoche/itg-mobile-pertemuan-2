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
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.deepPurple,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.deepPurple,
          foregroundColor: Colors.white,
          elevation: 0,
        ),
      ),
      initialRoute: '/',
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
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF4A148C), Color(0xFF7B1FA2), Color(0xFFE3F2FD)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.0, 0.35, 1.0],
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              // ── Header ──────────────────────────────────────────────
              const SizedBox(height: 36),
              CircleAvatar(
                radius: 44,
                backgroundColor: Colors.white24,
                child: const Icon(Icons.school, size: 48, color: Colors.white),
              ),
              const SizedBox(height: 14),
              const Text(
                'Praktikum Pemrograman Mobile',
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 13,
                  letterSpacing: 1.4,
                ),
              ),
              const SizedBox(height: 4),
              const Text(
                'Girah Ismi Nugraha',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                'NIM: 2306123',
                style: TextStyle(color: Colors.white70, fontSize: 14),
              ),
              const SizedBox(height: 36),

              // ── Menu Cards ──────────────────────────────────────────
              Expanded(
                child: Container(
                  decoration: const BoxDecoration(
                    color: Color(0xFFF3E5F5),
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(32),
                    ),
                  ),
                  padding: const EdgeInsets.fromLTRB(24, 32, 24, 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const Text(
                        'Pilih Halaman',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFF4A148C),
                          letterSpacing: 0.5,
                        ),
                      ),
                      const SizedBox(height: 16),

                      // Card 1 – Stateless
                      _MenuCard(
                        icon: Icons.info_outline_rounded,
                        iconColor: Colors.deepPurple,
                        bgColor: Colors.deepPurple.shade50,
                        title: 'Stateless Page',
                        subtitle: 'Profil mahasiswa (no state)',
                        onTap: () =>
                            Navigator.pushNamed(context, MyApp.routeInfo),
                      ),

                      const SizedBox(height: 14),

                      // Card 2 – Stateful
                      _MenuCard(
                        icon: Icons.calculate_rounded,
                        iconColor: Colors.teal,
                        bgColor: Colors.teal.shade50,
                        title: 'Stateful Page',
                        subtitle: 'Counter dengan tambah & kurang',
                        onTap: () =>
                            Navigator.pushNamed(context, MyApp.routeCounter),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _MenuCard extends StatelessWidget {
  const _MenuCard({
    required this.icon,
    required this.iconColor,
    required this.bgColor,
    required this.title,
    required this.subtitle,
    required this.onTap,
  });

  final IconData icon;
  final Color iconColor;
  final Color bgColor;
  final String title;
  final String subtitle;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      borderRadius: BorderRadius.circular(18),
      elevation: 3,
      shadowColor: Colors.deepPurple.withOpacity(0.15),
      child: InkWell(
        borderRadius: BorderRadius.circular(18),
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
          child: Row(
            children: [
              Container(
                width: 52,
                height: 52,
                decoration: BoxDecoration(
                  color: bgColor,
                  borderRadius: BorderRadius.circular(14),
                ),
                child: Icon(icon, color: iconColor, size: 28),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF1A1A2E),
                      ),
                    ),
                    const SizedBox(height: 2),
                    Text(
                      subtitle,
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey.shade600,
                      ),
                    ),
                  ],
                ),
              ),
              Icon(
                Icons.chevron_right_rounded,
                color: Colors.grey.shade400,
                size: 24,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
