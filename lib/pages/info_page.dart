import 'package:flutter/material.dart';
import '../core/app_theme.dart';
import '../widgets/glass_card.dart';

class InfoPage extends StatelessWidget {
  const InfoPage({super.key});

  // TODO: Isi data diri kamu di sini
  static const String nama = 'Muhammad Fathul Barry';
  static const String nim = '2306122';
  static const String kelas = 'D';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(title: const Text('Stateless Page')),
      body: Container(
        decoration: const BoxDecoration(gradient: AppTheme.backgroundGradient),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 16),
                Text('Profil Mahasiswa', style: AppTheme.headingStyle),
                const SizedBox(height: 24),
                GlassCard(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _InfoRow(icon: Icons.person, label: 'Nama', value: nama),
                      const Divider(color: Colors.white24, height: 24),
                      _InfoRow(icon: Icons.badge, label: 'NIM', value: nim),
                      const Divider(color: Colors.white24, height: 24),
                      _InfoRow(
                        icon: Icons.school,
                        label: 'Kelas',
                        value: kelas,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                GlassCard(
                  child: Text(
                    'Ini adalah StatelessWidget. Halaman ini tidak menyimpan state yang berubah.',
                    style: AppTheme.subHeadingStyle,
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

// Private widget helper agar build() tetap bersih
class _InfoRow extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;

  const _InfoRow({
    required this.icon,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, color: Colors.white70, size: 20),
        const SizedBox(width: 12),
        Text('$label  ', style: AppTheme.subHeadingStyle),
        Expanded(
          child: Text(
            value,
            style: AppTheme.subHeadingStyle.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.right,
          ),
        ),
      ],
    );
  }
}
