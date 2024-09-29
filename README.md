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

- **Langkah 1**: Buka `lib/main.dart` dan modifikasi kode sebagai berikut:
    ```dart
    import 'package:flutter/material.dart';

    void main() {
    runApp(const MyApp()); 
    }

    class MyApp extends StatelessWidget {
    const MyApp({super.key});

    @override
    Widget build(BuildContext context) {
        return const MaterialApp(
        title: 'Hello World App',
        home: MyHomePage(),
        );
    }
    }

    class MyHomePage extends StatelessWidget {
    const MyHomePage({super.key});

    @override
    Widget build(BuildContext context) {
        return Scaffold(
        appBar: AppBar(
            title: const Text('Hello World App'),
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
    **Penjelasan Kode**:
    - `MyApp` adalah widget yang mewarisi `StatelessWidget`. Di sini kita mendefinisikan bagaimana UI akan dibangun melalui metode `build()`.
    - `MaterialApp` adalah widget yang menyediakan struktur dasar untuk aplikasi, seperti tema dan navigasi.
    - `Scaffold` menyediakan struktur halaman dasar dengan AppBar dan body.

- **Langkah 2**: Jalankan aplikasi dengan mengetik:
    ```bash
    flutter run -d chrome
    ```
    Ini akan mem-build dan menjalankan aplikasi di emulator atau perangkat fisik yang terhubung. Anda akan melihat tampilan aplikasi dengan teks "Hello, Flutter!".


## 3. Membuat Stateful Widget
Sekarang, mari kita buat Stateful Widget yang dapat berubah selama aplikasi berjalan. Misalnya, kita akan membuat tombol yang mengubah teks saat diklik.

- Langkah 1: Modifikasi `lib/main.dart` menjadi seperti berikut:
    ```dart
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
    ```
    **Penjelasan Kode**:
    - `MyStatefulApp` adalah widget yang mewarisi StatefulWidget. Ini memiliki metode createState() untuk mengaitkan widget dengan statusnya.
    - `MyStatefulAppState` adalah kelas status yang berisi logika perubahan status.
    - `setState()` digunakan untuk memberitahukan bahwa status widget telah berubah, sehingga UI akan di-rebuild.

    **Hasil**:
    ![image](https://github.com/user-attachments/assets/6f4b9367-5faa-46bc-b43b-0da0b73b02a1)


## 4. Berbagai Jenis Widget di Flutter
Berikut adalah beberapa jenis widget penting yang sering digunakan:

### a. Text Widget: Menampilkan teks di layar.

    ```dart
    Text('Ini adalah teks')
    ```

### b. Image Widget: Menampilkan gambar.
    ```dart
    Image.network('https://example.com/image.png')
    ```

### c. Button Widget: Menambahkan tombol dengan beberapa varian, seperti ElevatedButton, TextButton, atau IconButton.
    ```dart
    ElevatedButton(
    onPressed: () {},
    child: Text('Tombol'),
    )
    ```

### d. Container Widget: Widget dasar untuk menampung dan mengatur tata letak.
    ```dart
    Container(
    padding: EdgeInsets.all(16),
    margin: EdgeInsets.all(8),
    color: Colors.blue,
    child: Text('Ini adalah container'),
    )
    ```

### e. Row dan Column Widget: Digunakan untuk mengatur widget secara horizontal (Row) atau vertikal (Column).
    ```dart
    Column(
    children: [
        Text('Item 1'),
        Text('Item 2'),
        Text('Item 3'),
    ],
    )
    ```

### f. ListView Widget: Digunakan untuk membuat daftar item yang dapat di-scroll.

```dart
ListView(
children: [
    ListTile(title: Text('Item 1')),
    ListTile(title: Text('Item 2')),
    ListTile(title: Text('Item 3')),
],
)
```



