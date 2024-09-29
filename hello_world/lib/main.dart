import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp()); // Tambahkan const di sini
}

class MyApp extends StatelessWidget {
  const MyApp({super.key}); // Konstruktor menggunakan const

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Hello World App', // Tambahkan const di sini
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key}); // Konstruktor menggunakan const

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hello World App'), // Tambahkan const di sini
      ),
      body: const Center(
        child: Text(
          'Hello World!',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
