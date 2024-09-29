# Flutter Widget/Component

## Pendahuluan
Dalam tutorial ini, kita akan membahas konsep dasar widget, jenis-jenis widget, serta bagaimana menggunakannya untuk membangun sebuah aplikasi sederhana.

---

## 1. Apa itu Widget di Flutter?
Widget di Flutter bisa diibaratkan sebagai "blok bangunan" antarmuka aplikasi. Setiap elemen UI di Flutter adalah widget, mulai dari teks sederhana hingga tata letak yang kompleks. Ada dua jenis utama widget:

1. **Stateless Widget**: Tidak dapat berubah setelah dibuat.
2. **Stateful Widget**: Dapat berubah seiring waktu, misalnya karena input pengguna.

## 2. Membuat Stateless Widget
Mari kita mulai dengan membuat **Stateless Widget** yang merupakan widget yang tidak memiliki status internal.

- Langkah 1: Buka `lib/main.dart` dan modifikasi kode sebagai berikut:
    ```bash
    import 'package:flutter/material.dart';

    void main() {
    runApp(MyApp());
    }

    class MyApp extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
            title: Text('Flutter Stateless Widget'),
            ),
            body: Center(
            child: Text('Hello, Flutter!'),
            ),
        ),
        );
    }
    }
    ```
