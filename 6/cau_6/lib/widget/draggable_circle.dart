import 'package:flutter/material.dart';
class DraggableCircle extends StatelessWidget {
  const DraggableCircle({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(width: 80, height: 80, decoration: const BoxDecoration(color: Colors.blue, shape: BoxShape.circle));
  }
}