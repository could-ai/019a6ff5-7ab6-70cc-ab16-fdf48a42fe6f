import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const FitProApp());
}

class FitProApp extends StatelessWidget {
  const FitProApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FitPro - Calistenia',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF6366F1),
          brightness: Brightness.light,
        ),
        useMaterial3: true,
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          elevation: 0,
        ),
        cardTheme: CardTheme(
          elevation: 2,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
      ),
      // Remove initialRoute and use home directly
      home: const HomeScreen(),
      // Keep routes for navigation
      routes: {
        '/home': (context) => const HomeScreen(),
      },
    );
  }
}
