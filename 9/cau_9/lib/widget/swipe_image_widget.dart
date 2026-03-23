import 'package:flutter/material.dart';

class SwipeImageWidget extends StatelessWidget {
  final String imageUrl;

  const SwipeImageWidget({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [BoxShadow(color: Colors.black26, blurRadius: 6)],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.network(
          imageUrl,
          fit: BoxFit.cover,// Cắt ảnh cho vừa Container
        ),
      ),
    );
  }
}