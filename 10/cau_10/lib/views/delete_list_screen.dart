import 'package:flutter/material.dart';
import '../models/item_model.dart';
import '../widget/item_tile.dart';
import '../utils/app_constants.dart';

class DeleteListScreen extends StatefulWidget {
  const DeleteListScreen({super.key});

  @override
  State<DeleteListScreen> createState() => _DeleteListScreenState();
}

class _DeleteListScreenState extends State<DeleteListScreen> {
  // Lấy dữ liệu từ utils
  late ItemModel _data;

  @override
  void initState() {
    super.initState();
    _data = ItemModel(items: List.from(AppConstants.defaultItems));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Bài 10: Swipe to Delete")),
      body: Column(
        children: [
          const SizedBox(height: 10),
          const Text(
            AppConstants.mssv,
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.red),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text("Vuốt sang trái để xóa item"),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _data.items.length,
              itemBuilder: (context, index) {
                final item = _data.items[index];
                return Dismissible(
                  key: Key(item),
                  direction: DismissDirection.endToStart, // Chỉ cho kéo từ phải sang trái
                  background: Container(
                    color: Colors.red,
                    alignment: Alignment.centerRight,
                    // Thay vì: padding: const EdgeInsets.right(20),
padding: const EdgeInsets.only(right: 20),
                    child: const Icon(Icons.delete, color: Colors.white),
                  ),
                  onDismissed: (direction) {
                    setState(() {
                      _data.items.removeAt(index);
                    });
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('$item đã bị xóa')),
                    );
                  },
                  child: ItemTile(title: item),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}