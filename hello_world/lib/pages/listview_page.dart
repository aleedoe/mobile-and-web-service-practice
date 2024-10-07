import 'package:flutter/material.dart';

class ListViewPage extends StatelessWidget {
  ListViewPage({super.key});
  final List<String> items = List<String>.generate(20, (i) => "Item $i");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView Example'),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: const Icon(Icons.list),
            title: Text(items[index]),
            onTap: () {
              // Aksi saat item ditekan
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text('You tapped on ${items[index]}'),
              ));
            },
          );
        },
      ),
    );
  }
}
