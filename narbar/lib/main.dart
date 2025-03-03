import 'package:flutter/material.dart';
import 'package:narbar/bottom_nav_with_animated_icons.dart';
import 'package:narbar/custom/bottom_nav_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 8, 8, 8)),
        useMaterial3: true,
      ),
      home: const BottomNavBar() 
    );
  }
}

