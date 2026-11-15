import 'package:flutter/material.dart';
import 'screens/team_screen.dart';

void main() {
  runApp(const MicroXApp());
}

class MicroXApp extends StatelessWidget {
  const MicroXApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MicroX',
      theme: ThemeData(
        useMaterial3: true,
        brightness: Brightness.dark,
        scaffoldBackgroundColor: const Color(0xFF111111),
        colorScheme: const ColorScheme.dark(
          primary: Color(0xFFB50909),
          surface: Color(0xFF1B1C1D),
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF111111),
          foregroundColor: Color(0xFFF4F2F0),
          surfaceTintColor: Colors.transparent,
          elevation: 0,
        ),
      ),
      home: const TeamScreen(),
    );
  }
}