import 'package:flutter/material.dart';
import '../models/slider_model.dart';
import '../widget/custom_slider_bar.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({super.key});
  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  final SliderModel _slider = SliderModel();
  final double _trackWidth = 300.0; // Độ dài thanh trượt
  final String mssv = "MSSV: 6451071009"; 

  void _updateSlider(double localX) {
    setState(() {
      // Giới hạn nút tròn trong phạm vi thanh trượt (0 đến _trackWidth)
      _slider.positionX = localX.clamp(0.0, _trackWidth);
      // Tính toán giá trị phần trăm từ 0 - 100
      _slider.value = ((_slider.positionX / _trackWidth) * 100).toInt();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Bài 7: Tự tạo Slider")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(mssv, style: const TextStyle(fontSize: 20, color: Colors.red, fontWeight: FontWeight.bold)),
            const SizedBox(height: 50),
            Text("Giá trị: ${_slider.value}", style: const TextStyle(fontSize: 40, fontWeight: FontWeight.bold)),
            const SizedBox(height: 30),
            // Khu vực Slider
            GestureDetector(
              onPanUpdate: (details) => _updateSlider(details.localPosition.dx),
              onTapDown: (details) => _updateSlider(details.localPosition.dx),
              child: SizedBox(
                width: _trackWidth + 30, // Cộng thêm kích thước nút tròn
                height: 50,
                child: Stack(
                  alignment: Alignment.centerLeft,
                  children: [
                    CustomSliderBar(width: _trackWidth),
                    Positioned(
                      left: _slider.positionX,
                      child: const SliderThumb(),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}