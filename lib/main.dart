import 'package:buil_animated_app/screens/onboding/onboding_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Build Animated App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const OnBodingScreen(),
    );
  }
}
