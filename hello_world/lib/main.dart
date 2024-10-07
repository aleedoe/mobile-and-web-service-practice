import 'package:flutter/material.dart';
import 'pages/gridview_page.dart';
import 'pages/listview_page.dart';

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
      home: const HomePage(), // Halaman awal aplikasi
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ListViewPage()),
                );
              },
              child: const Text('Go to ListView Page'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => GridViewPage()),
                );
              },
              child: const Text('Go to GridView Page'),
            ),
          ],
        ),
      ),
    );
  }
}