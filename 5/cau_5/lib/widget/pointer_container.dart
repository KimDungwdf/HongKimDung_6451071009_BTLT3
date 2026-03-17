import 'package:flutter/material.dart';

class PointerContainer extends StatelessWidget {
  // Hàm callback để truyền sự kiện chạm ra bên ngoài
  final void Function(PointerEvent) onPointerEvent;

  const PointerContainer({super.key, required this.onPointerEvent});

  @override
  Widget build(BuildContext context) {
    return Listener(
      // Bắt sự kiện khi bắt đầu chạm (nhấn chuột/ngón tay xuống)
      onPointerDown: onPointerEvent,
      // Bắt sự kiện khi di chuyển (vuốt/kéo)
      onPointerMove: onPointerEvent,
      child: Container(
        width: double.infinity,
        height: 300, // Chiều cao của khu vực nhận diện chạm
        decoration: BoxDecoration(
          color: Colors.orangeAccent.withOpacity(0.2),
          border: Border.all(color: Colors.orange, width: 2),
          borderRadius: BorderRadius.circular(12),
        ),
        alignment: Alignment.center,
        child: const Text(
          'Chạm hoặc vuốt vào khu vực này',
          style: TextStyle(fontSize: 16, color: Colors.black54),
        ),
      ),
    );
  }
}