import 'package:flutter/material.dart';
import 'core/app_theme.dart';
import 'pages/home_menu_page.dart';
import 'pages/info_page.dart';
import 'pages/counter_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const String routeHome = '/';
  static const String routeInfo = '/info';
  static const String routeCounter = '/counter';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Navigation Demo',
      theme: AppTheme.themeData,
      initialRoute: routeHome,
      routes: {
        routeHome: (_) => const HomeMenuPage(),
        routeInfo: (_) => const InfoPage(),
        routeCounter: (_) => const CounterPage(),
      },
    );
  }
}
