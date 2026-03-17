import 'package:flutter/material.dart';

class ColorBox extends StatelessWidget {
  final Color color;
  final VoidCallback onDoubleTap;

  const ColorBox({
    super.key, 
    required this.color, 
    required this.onDoubleTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onDoubleTap: onDoubleTap,
      child: Container(
        width: 200,
        height: 200,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(16), // Bo góc chút cho đẹp
          boxShadow: const [
            BoxShadow(color: Colors.black26, blurRadius: 10, offset: Offset(0, 4))
          ]
        ),
      ),
    );
  }
}