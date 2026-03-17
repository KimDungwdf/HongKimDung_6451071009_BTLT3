import 'package:flutter/material.dart';
import '../utils/constants.dart';

class TapButton extends StatelessWidget {
  final VoidCallback onPressed;

  const TapButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed, // Bắt sự kiện nhấn nút
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
        backgroundColor: Colors.blueAccent, // Màu nền của nút
        foregroundColor: Colors.white, // Màu chữ
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: const Text(
        buttonText,
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
    );
  }
}