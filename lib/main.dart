import 'package:flutter/material.dart';
import 'package:musiconic/pages/home_page.dart';

void main() => runApp(const MusiconicApp());

class MusiconicApp extends StatelessWidget {
  const MusiconicApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Musiconic',
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: const Color(0xFF1C1C2D),
        colorScheme: ColorScheme.dark(
          primary: Colors.purpleAccent,
          secondary: Colors.deepPurpleAccent,
        ),
        textTheme: const TextTheme(bodyMedium: TextStyle(color: Colors.white)),
      ),
      home: const SplashScreen(),
    );
  }
}

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const HomePage()),
      );
    });

    return const Scaffold(
      body: Center(
        child: Text(
          'Musiconic',
          style: TextStyle(
            color: Colors.purpleAccent,
            fontSize: 42,
            fontWeight: FontWeight.bold,
            fontFamily: 'Montserrat',
          ),
        ),
      ),
    );
  }
}
