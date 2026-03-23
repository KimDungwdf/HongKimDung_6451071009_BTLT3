import 'package:flutter/material.dart';
import '../widget/grid_tile_widget.dart';

class GridScreen extends StatefulWidget {
  const GridScreen({super.key});

  @override
  State<GridScreen> createState() => _GridScreenState();
}

class _GridScreenState extends State<GridScreen> {
  final int _totalTiles = 9; // Grid 3x3 = 9 ô
  // Danh sách quản lý trạng thái đổi màu của từng ô, mặc định là false
  final List<bool> _tileStates = List.generate(9, (index) => false);
  final String mssv = "MSSV: 6451071009"; // <--- MSSV ĐÃ CẬP NHẬT

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Bài 8: Grid 3x3 Tap Gesture")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Hiển thị MSSV cố định trên màn hình
            Text(
              mssv,
              style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.red),
            ),
            const SizedBox(height: 30),
            // Widget GridView
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3, // 3 cột
                  crossAxisSpacing: 10, // Khoảng cách ngang giữa các ô
                  mainAxisSpacing: 10, // Khoảng cách dọc giữa các ô
                ),
                itemCount: _totalTiles,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        // Đảo ngược trạng thái của ô khi được chạm vào
                        _tileStates[index] = !_tileStates[index];
                      });
                    },
                    child: GridTileWidget(
                      id: index,
                      isActive: _tileStates[index],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}