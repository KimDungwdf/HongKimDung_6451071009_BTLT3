import 'package:flutter/material.dart';

class CustomSliderBar extends StatelessWidget {
  final double width;
  const CustomSliderBar({super.key, required this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 10,
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(5),
      ),
    );
  }
}

class SliderThumb extends StatelessWidget {
  const SliderThumb({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30,
      height: 30,
      decoration: const BoxDecoration(
        color: Colors.orange,
        shape: BoxShape.circle,
        boxShadow: [BoxShadow(color: Colors.black26, blurRadius: 4)],
      ),
    );
  }
}