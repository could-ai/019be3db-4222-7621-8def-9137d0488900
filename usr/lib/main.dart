import 'package:flutter/material.dart';
import 'screens/splash_screen.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const RGSApp());
}

class RGSApp extends StatelessWidget {
  const RGSApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'RGS System',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF0D47A1), // Professional Navy Blue
          primary: const Color(0xFF0D47A1),
          secondary: const Color(0xFFFFC107), // Amber/Gold accent
        ),
        useMaterial3: true,
        fontFamily: 'Roboto', // Default clean font
      ),
      // CRITICAL: Always explicitly set initialRoute and define '/' in routes
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(),
        '/home': (context) => const HomeScreen(),
      },
    );
  }
}
