import 'package:flutter/material.dart';
import '../models/tap_counter.dart';
import '../widget/tap_button.dart';
import '../utils/constants.dart';

class TapCounterView extends StatefulWidget {
  const TapCounterView({super.key});

  @override
  State<TapCounterView> createState() => _TapCounterViewState();
}

class _TapCounterViewState extends State<TapCounterView> {
  // Khởi tạo model đếm với giá trị ban đầu là 0
  final TapCounter _counter = TapCounter();

  // Hàm xử lý tăng số đếm
  void _incrementCounter() {
    setState(() {
      _counter.count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(appBarTitle),
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Hiển thị số lần Tap
            Text(
              'Tap count: ${_counter.count}',
              style: const TextStyle(
                fontSize: 28, 
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 30),
            
            // Nút bấm được gọi từ thư mục widget
            TapButton(onPressed: _incrementCounter),
            
            const SizedBox(height: 60),
            // Phần in MSSV bắt buộc
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
    );
  }
}