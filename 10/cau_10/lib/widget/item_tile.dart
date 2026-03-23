import 'package:flutter/material.dart';

class ItemTile extends StatelessWidget {
  final String title;
  const ItemTile({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: ListTile(
        leading: const Icon(Icons.label, color: Colors.blue),
        title: Text(title, style: const TextStyle(fontSize: 18)),
        trailing: const Icon(Icons.swipe_left, color: Colors.grey, size: 16),
      ),
    );
  }
}