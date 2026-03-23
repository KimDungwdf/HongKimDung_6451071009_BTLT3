import 'package:flutter/material.dart';
import '../views/grid_screen.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bài 8: Grid Gesture',
      theme: ThemeData(primarySwatch: Colors.teal),
      home: const GridScreen(), // Gọi màn hình chính từ views
    );
  }
}