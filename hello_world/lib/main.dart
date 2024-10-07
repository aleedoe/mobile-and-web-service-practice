import 'package:flutter/material.dart';
import 'pages/gridview_page.dart';

void main() {
  runApp( const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter listview',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: GridViewPage(), // Halaman awal aplikasi
    );
  }
}
