# Flutter Lanjutan: ListView, GridView, dan Flutter Navigation

## Pendahuluan
- **ListView**: Digunakan untuk menampilkan daftar item yang dapat di-scroll secara vertikal.
- **GridView**: Digunakan untuk menampilkan item dalam tata letak grid.
- **Flutter Navigation**: Digunakan untuk berpindah antar halaman atau mengirim data antar layar.

---


1. **Stateless Widget**: Tidak dapat berubah setelah dibuat.
2. **Stateful Widget**: Dapat berubah seiring waktu, misalnya karena input pengguna.

## 1. ListView di Flutter
`ListView` adalah widget yang digunakan untuk menampilkan daftar item yang dapat di-scroll secara vertikal. Anda bisa menggunakan `ListView` untuk menampilkan daftar teks, gambar, atau widget lainnya.

- **Contoh Penggunaan ListView**:
    ```dart
        import 'package:flutter/material.dart';

        void main() {
        runApp(MyApp());
        }

        class MyApp extends StatelessWidget {
        @override
        Widget build(BuildContext context) {
            return MaterialApp(
            home: Scaffold(
                appBar: AppBar(title: Text('Flutter ListView')),
                body: ListView(
                children: <Widget>[
                    ListTile(
                    leading: Icon(Icons.map),
                    title: Text('Map'),
                    ),
                    ListTile(
                    leading: Icon(Icons.photo),
                    title: Text('Photo'),
                    ),
                    ListTile(
                    leading: Icon(Icons.phone),
                    title: Text('Phone'),
                    ),
                ],
                ),
            ),
            );
        }
        }
    ```
    **Penjelasan Kode**:
    - **ListView**: Widget yang menampilkan daftar item secara vertikal dan bisa di-scroll.
    - **ListTile**: Widget yang cocok untuk menampilkan daftar item sederhana dengan leading (ikon), title, subtitle, dan trailing (opsional).


## 2. GridView di Flutter
`GridView` digunakan untuk menampilkan data dalam tata letak grid (baris dan kolom). Anda dapat menggunakannya untuk menampilkan galeri gambar atau kumpulan data lainnya.

- **Contoh Penggunaan GridView**:
    ```dart
        import 'package:flutter/material.dart';

        void main() {
        runApp(MyApp());
        }

        class MyApp extends StatelessWidget {
        @override
        Widget build(BuildContext context) {
            return MaterialApp(
            home: Scaffold(
                appBar: AppBar(title: Text('Flutter GridView')),
                body: GridView.count(
                crossAxisCount: 2,
                children: <Widget>[
                    Container(
                    padding: EdgeInsets.all(8),
                    color: Colors.red,
                    child: const Text('Item 1'),
                    ),
                    Container(
                    padding: EdgeInsets.all(8),
                    color: Colors.blue,
                    child: const Text('Item 2'),
                    ),
                    Container(
                    padding: EdgeInsets.all(8),
                    color: Colors.green,
                    child: const Text('Item 3'),
                    ),
                    Container(
                    padding: EdgeInsets.all(8),
                    color: Colors.yellow,
                    child: const Text('Item 4'),
                    ),
                ],
                ),
            ),
            );
        }
        }

    ```
    **Penjelasan Kode**:
    - `GridView.count`: Membuat grid dengan jumlah kolom tetap. Dalam contoh ini, grid memiliki 2 kolom (`crossAxisCount: 2`).
    - Setiap Container berfungsi sebagai item grid yang bisa Anda modifikasi dengan berbagai properti seperti `padding`, `color`, dan `child`.

    **Hasil**:
    ![image](https://github.com/user-attachments/assets/6f4b9367-5faa-46bc-b43b-0da0b73b02a1)


## 3. Flutter Navigation (Navigasi antar Halaman)
Flutter menyediakan cara yang mudah untuk berpindah antar halaman menggunakan widget `Navigator` dan metode `push` serta `pop`. Metode `push` digunakan untuk berpindah ke halaman baru, sementara `pop` digunakan untuk kembali ke halaman sebelumnya.

- **Contoh Flutter Navigation Sederhana**:
   
   Buat dua file halaman terpisah: `first_page.dart` dan `second_page.dart`.

   **File** `first_page.dart`
    ```dart
        import 'package:flutter/material.dart';
        import 'second_page.dart';

        class FirstPage extends StatelessWidget {
        @override
        Widget build(BuildContext context) {
            return Scaffold(
            appBar: AppBar(title: Text('Halaman Pertama')),
            body: Center(
                child: ElevatedButton(
                onPressed: () {
                    Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SecondPage()),
                    );
                },
                child: Text('Ke Halaman Kedua'),
                ),
            ),
            );
        }
        }

    ```

   **File** `second_page.dart`
    ```dart
        import 'package:flutter/material.dart';

        class SecondPage extends StatelessWidget {
        @override
        Widget build(BuildContext context) {
            return Scaffold(
            appBar: AppBar(title: Text('Halaman Kedua')),
            body: Center(
                child: ElevatedButton(
                onPressed: () {
                    Navigator.pop(context); // Kembali ke halaman pertama
                },
                child: Text('Kembali ke Halaman Pertama'),
                ),
            ),
            );
        }
        }

    ```
    **Penjelasan Kode**:
    - `Navigator.push`: Digunakan untuk navigasi ke halaman baru. `MaterialPageRoute` menentukan halaman tujuan.
    - `Navigator.pop`: Digunakan untuk kembali ke halaman sebelumnya.


### Menghubungkan Halaman di main.dart
Di `main.dar`t, impor kedua halaman dan atur halaman awal aplikasi menjadi `FirstPage`.

```dart
    import 'package:flutter/material.dart';
    import 'pages/first_page.dart';

    void main() {
    runApp(MyApp());
    }

    class MyApp extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return MaterialApp(
        home: FirstPage(),
        );
    }
    }
```

**Hasil**:
![image](https://github.com/user-attachments/assets/6f4b9367-5faa-46bc-b43b-0da0b73b02a1)

