import 'package:flutter/material.dart';

class LongPressCard extends StatelessWidget {
  final VoidCallback onLongPress;
  final String text;

  const LongPressCard({
    super.key, 
    required this.onLongPress, 
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onLongPress: onLongPress, // Bắt sự kiện nhấn giữ
      child: Card(
        elevation: 6, // Đổ bóng cho Card nổi bật lên
        color: Colors.amber[100],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 25),
          child: Text(
            text,
            style: const TextStyle(
              fontSize: 20, 
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
        ),
      ),
    );
  }
}