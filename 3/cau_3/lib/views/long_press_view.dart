import 'package:flutter/material.dart';
import '../widget/long_press_card.dart';
import '../utils/constants.dart';

class LongPressView extends StatelessWidget {
  const LongPressView({super.key});

  // Hàm gọi SnackBar
  void _showSnackBar(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(defaultLongPressInfo.message),
        duration: const Duration(seconds: 2),
        backgroundColor: Colors.teal, // Thêm màu cho thông báo
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Long Press Demo'),
        backgroundColor: Colors.deepPurple, // Màu AppBar
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Gọi widget Card đã tạo ở trên
            LongPressCard(
              text: cardText,
              onLongPress: () => _showSnackBar(context),
            ),
            const SizedBox(height: 50),
            // Không thể thiếu phần in MSSV
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