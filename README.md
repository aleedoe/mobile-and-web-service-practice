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
    ```dart
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

    ```

    Penjelasan Kode:
    - `MyApp` adalah widget yang mewarisi `StatelessWidget`. Di sini kita mendefinisikan bagaimana UI akan dibangun melalui metode `build()`.
    - `MaterialApp` adalah widget yang menyediakan struktur dasar untuk aplikasi, seperti tema dan navigasi.
    - `Scaffold` menyediakan struktur halaman dasar dengan AppBar dan body.

- Langkah 2: Jalankan aplikasi dengan mengetik:
    ```bash
    flutter run -d chrome
    ```
    Ini akan mem-build dan menjalankan aplikasi di emulator atau perangkat fisik yang terhubung. Anda akan melihat tampilan aplikasi dengan teks "Hello, Flutter!".


## 3. Membuat Stateful Widget
Sekarang, mari kita buat Stateful Widget yang dapat berubah selama aplikasi berjalan. Misalnya, kita akan membuat tombol yang mengubah teks saat diklik.

- Langkah 1: Modifikasi `lib/main.dart` menjadi seperti berikut:
```dart

```