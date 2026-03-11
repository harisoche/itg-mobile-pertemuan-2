import 'package:flutter/material.dart';
import '../core/app_theme.dart';
import '../widgets/glass_button.dart';
import '../main.dart';

class HomeMenuPage extends StatelessWidget {
  const HomeMenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(gradient: AppTheme.backgroundGradient),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),
                Text(
                  'First Navigation\nDemo App',
                  style: AppTheme.headingStyle.copyWith(fontSize: 36),
                ),
                const SizedBox(height: 8),
                Text(
                  'Pilih halaman yang ingin dibuka',
                  style: AppTheme.subHeadingStyle,
                ),
                const Spacer(),
                GlassButton(
                  label: 'Buka Stateless Page',
                  icon: Icons.info_outline,
                  onTap: () => Navigator.pushNamed(context, MyApp.routeInfo),
                ),
                const SizedBox(height: 16),
                GlassButton(
                  label: 'Buka Stateful Page',
                  icon: Icons.add_circle_outline,
                  onTap: () => Navigator.pushNamed(context, MyApp.routeCounter),
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
