import 'package:flutter/material.dart';

class GridTileWidget extends StatelessWidget {
  final int id;
  final bool isActive;
  final Color activeColor;
  final Color inactiveColor;

  const GridTileWidget({
    super.key,
    required this.id,
    required this.isActive,
    this.activeColor = Colors.teal,
    this.inactiveColor = Colors.grey,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: isActive ? activeColor : inactiveColor,
        borderRadius: BorderRadius.circular(8),
        boxShadow: const [BoxShadow(color: Colors.black12, blurRadius: 4)],
      ),
      child: Text(
        "Ô ${id + 1}",
        style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
      ),
    );
  }
}