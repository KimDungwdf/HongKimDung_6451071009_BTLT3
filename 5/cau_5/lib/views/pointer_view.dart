import 'package:flutter/material.dart';
import '../models/pointer_state.dart';
import '../widget/pointer_container.dart';
import '../utils/constants.dart';

class PointerView extends StatefulWidget {
  const PointerView({super.key});

  @override
  State<PointerView> createState() => _PointerViewState();
}

class _PointerViewState extends State<PointerView> {
  // Khởi tạo model lưu tọa độ
  final PointerState _pointerState = PointerState();

  // Hàm cập nhật tọa độ
  void _updatePointer(PointerEvent event) {
    setState(() {
      // Lấy tọa độ tương đối bên trong Container
      _pointerState.x = event.localPosition.dx;
      _pointerState.y = event.localPosition.dy;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(appBarTitle),
        backgroundColor: Colors.deepOrange,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Hiển thị tọa độ X, Y (Làm tròn 2 chữ số thập phân cho gọn)
              Text(
                'Tọa độ: (X: ${_pointerState.x.toStringAsFixed(2)}, Y: ${_pointerState.y.toStringAsFixed(2)})',
                style: const TextStyle(
                  fontSize: 22, 
                  fontWeight: FontWeight.bold,
                  color: Colors.deepOrange,
                ),
              ),
              const SizedBox(height: 30),
              
              // Gọi widget Container có chức năng Listener
              PointerContainer(onPointerEvent: _updatePointer),
              
              const SizedBox(height: 50),
              // In MSSV bắt buộc
              const Text(
                'MSSV: $mssv',
                style: TextStyle(
                  fontSize: 18, 
                  color: Colors.red, 
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}