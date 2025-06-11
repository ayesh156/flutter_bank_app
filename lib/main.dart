import 'package:flutter/material.dart';
import 'widgets/bottom_nav.dart'; // ✅ Import the new file

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bank App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'SF Pro Display',
      ),
      home: const MainNavigationScreen(), // ✅ Uses the new widget
      debugShowCheckedModeBanner: false,
    );
  }
}
