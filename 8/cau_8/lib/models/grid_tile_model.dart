import 'package:flutter/material.dart';

class GridTileModel {
  int id;
  Color activeColor; // Màu khi được chạm vào
  Color inactiveColor; // Màu mặc định

  GridTileModel({
    required this.id,
    this.activeColor = Colors.teal,
    this.inactiveColor = Colors.grey,
  });
}