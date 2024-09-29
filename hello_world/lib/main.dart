import 'package:flutter/material.dart';

void main() {
  runApp( const MyStatefulApp());
}

class MyStatefulApp extends StatefulWidget {
  const MyStatefulApp({super.key});

  @override
  MyStatefulAppState createState() => MyStatefulAppState();
}

class MyStatefulAppState extends State<MyStatefulApp> {
  String message = 'Tekan tombol di bawah';

  void _changeMessage() {
    setState(() {
      message = 'Tombol telah ditekan!';
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Stateful Widget'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(message),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: _changeMessage,
                child: const Text('Tekan Saya'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
