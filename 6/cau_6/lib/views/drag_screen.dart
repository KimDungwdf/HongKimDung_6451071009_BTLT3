import 'package:flutter/material.dart';
import '../models/circle_model.dart';
import '../widget/draggable_circle.dart';
class DragScreen extends StatefulWidget {
  const DragScreen({super.key});
  @override
  State<DragScreen> createState() => _DragScreenState();
}
class _DragScreenState extends State<DragScreen> {
  final CircleModel _pos = CircleModel(x: 100, y: 100);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Positioned(top: 50, left: 20, child: Text("MSSV: 6451071009", style: TextStyle(fontSize: 20, color: Colors.red))), // <-- SỬA MSSV ĐÂY
        Positioned(left: _pos.x, top: _pos.y, child: GestureDetector(
          onPanUpdate: (d) => setState(() { _pos.x += d.delta.dx; _pos.y += d.delta.dy; }),
          child: const DraggableCircle(),
        )),
      ]),
    );
  }
}