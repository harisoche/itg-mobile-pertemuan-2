import 'package:flutter/material.dart';
import '../core/app_theme.dart';
import '../widgets/glass_card.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int _count = 0; // private, konvensi underscore untuk state

  void _tambah() => setState(() => _count++);
  void _kurangi() => setState(() {
    if (_count > 0) _count--;
  }); // guard: tidak minus
  void _reset() => setState(() => _count = 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(title: const Text('Stateful Page')),
      body: Container(
        decoration: const BoxDecoration(gradient: AppTheme.backgroundGradient),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              children: [
                const SizedBox(height: 16),
                Text('Counter App', style: AppTheme.headingStyle),
                const Spacer(),
                GlassCard(
                  padding: const EdgeInsets.symmetric(
                    vertical: 40,
                    horizontal: 32,
                  ),
                  child: Column(
                    children: [
                      Text('Nilai Counter', style: AppTheme.subHeadingStyle),
                      const SizedBox(height: 12),
                      Text('$_count', style: AppTheme.counterStyle),
                      const SizedBox(height: 4),
                      // Indikator visual saat nilai 0
                      Text(
                        _count == 0 ? 'Minimal nilai tercapai' : '',
                        style: const TextStyle(
                          color: Colors.orange,
                          fontSize: 13,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 32),
                // Tombol aksi dalam satu baris
                Row(
                  children: [
                    Expanded(
                      child: _ActionButton(
                        label: 'Kurangi',
                        icon: Icons.remove,
                        onTap: _kurangi,
                        enabled: _count > 0, // abu-abu jika sudah 0
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: _ActionButton(
                        label: 'Tambah',
                        icon: Icons.add,
                        onTap: _tambah,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                SizedBox(
                  width: double.infinity,
                  child: _ActionButton(
                    label: 'Reset',
                    icon: Icons.refresh,
                    onTap: _reset,
                    enabled: _count > 0,
                  ),
                ),
                const Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _ActionButton extends StatelessWidget {
  final String label;
  final IconData icon;
  final VoidCallback onTap;
  final bool enabled;

  const _ActionButton({
    required this.label,
    required this.icon,
    required this.onTap,
    this.enabled = true,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: enabled ? onTap : null,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        padding: const EdgeInsets.symmetric(vertical: 16),
        decoration: BoxDecoration(
          color: enabled ? AppTheme.glassFill : Colors.white.withOpacity(0.08),
          borderRadius: BorderRadius.circular(14),
          border: Border.all(
            color: enabled ? AppTheme.glassBorder : Colors.white24,
            width: 1.5,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: enabled ? Colors.white : Colors.white38,
              size: 20,
            ),
            const SizedBox(width: 8),
            Text(
              label,
              style: TextStyle(
                color: enabled ? Colors.white : Colors.white38,
                fontWeight: FontWeight.w600,
                fontSize: 15,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
