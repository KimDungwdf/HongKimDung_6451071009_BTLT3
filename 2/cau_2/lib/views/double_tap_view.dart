import 'package:flutter/material.dart';
import '../models/box_color_state.dart';
import '../widget/color_box.dart';
import '../utils/constants.dart';

class DoubleTapView extends StatefulWidget {
  const DoubleTapView({super.key});

  @override
  State<DoubleTapView> createState() => _DoubleTapViewState();
}

class _DoubleTapViewState extends State<DoubleTapView> {
  // Khởi tạo trạng thái ban đầu là màu Xanh
  late BoxColorState _boxState;

  @override
  void initState() {
    super.initState();
    _boxState = BoxColorState(currentColor: defaultBlue);
  }

  // Hàm xử lý đổi màu
  void _toggleColor() {
    setState(() {
      if (_boxState.currentColor == defaultBlue) {
        _boxState.currentColor = defaultRed;
      } else {
        _boxState.currentColor = defaultBlue;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Double Tap Demo'),
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Double tap vào hình vuông bên dưới!',
              style: TextStyle(fontSize: 16, fontStyle: FontStyle.italic),
            ),
            const SizedBox(height: 20),
            // Gọi Widget hình vuông và truyền hàm _toggleColor vào
            ColorBox(
              color: _boxState.currentColor,
              onDoubleTap: _toggleColor,
            ),
            const SizedBox(height: 40),
            // In MSSV theo yêu cầu
            const Text(
              'MSSV: $myMSSV',
              style: TextStyle(fontSize: 18, color: Colors.red, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}