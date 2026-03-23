import 'package:flutter/material.dart';
import '../models/image_model.dart';
import '../widget/swipe_image_widget.dart';
import '../utils/app_constants.dart'; // <--- Import folder utils ở đây

class SwipeScreen extends StatefulWidget {
  const SwipeScreen({super.key});

  @override
  State<SwipeScreen> createState() => _SwipeScreenState();
}

class _SwipeScreenState extends State<SwipeScreen> {
  final PageController _pageController = PageController();
  
  // Lấy dữ liệu từ AppConstants trong utils
  final ImageModel _images = ImageModel(imageUrls: AppConstants.imageUrls);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Bài 9: Swipe Đổi Hình")),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            // Dùng MSSV từ Utils
            const Text(
              AppConstants.mssv,
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.red),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: PageView.builder(
                controller: _pageController,
                itemCount: _images.imageUrls.length,
                onPageChanged: (index) => setState(() => _images.currentIndex = index),
                itemBuilder: (context, index) {
                  return SwipeImageWidget(imageUrl: _images.imageUrls[index]);
                },
              ),
            ),
            const SizedBox(height: 20),
            Text("Hình ${_images.currentIndex + 1} / ${_images.imageUrls.length}"),
          ],
        ),
      ),
    );
  }
}