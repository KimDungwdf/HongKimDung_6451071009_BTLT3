import 'package:flutter/material.dart';
import '../widget/tap_box.dart';
import '../utils/constants.dart';

class TapDemoView extends StatelessWidget {
  const TapDemoView({super.key});

  void _showSnackBar(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(defaultTapInfo.message),
        duration: const Duration(seconds: 2),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(appBarTitle),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TapBox(onTap: () => _showSnackBar(context)),
            const SizedBox(height: 40),
            // Chữ ký MSSV theo yêu cầu
            const Text(
              'MSSV: 6451071009',
              style: TextStyle(fontSize: 18, color: Colors.red, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}