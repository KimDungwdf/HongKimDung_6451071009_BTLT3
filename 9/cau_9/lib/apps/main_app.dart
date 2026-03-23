import 'package:flutter/material.dart';
import '../views/swipe_screen.dart'; // Import đúng file bài 9

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bài 9: Swipe Đổi Hình',
      theme: ThemeData(primarySwatch: Colors.teal),
      home: const SwipeScreen(), // Gọi màn hình chính từ views
    );
  }
}