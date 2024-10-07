import 'package:flutter/material.dart';

class GridViewPage extends StatelessWidget {
  GridViewPage({super.key});
  final List<String> items = List<String>.generate(20, (i) => "Item $i");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GridView Example'),
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // Jumlah item per baris
        ),
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Card(
            color: Colors.blueAccent,
            child: Center(
              child: Text(
                items[index],
                style: const TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
          );
        },
      ),
    );
  }
}
