# Flutter Lanjutan: ListView, GridView, dan Flutter Navigation

## Pendahuluan
- **ListView**: Digunakan untuk menampilkan daftar item yang dapat di-scroll secara vertikal.
- **GridView**: Digunakan untuk menampilkan item dalam tata letak grid.
- **Flutter Navigation**: Digunakan untuk berpindah antar halaman atau mengirim data antar layar.

---


## 1. ListView di Flutter
`ListView` adalah widget yang digunakan untuk menampilkan daftar item yang dapat di-scroll secara vertikal. Anda bisa menggunakan `ListView` untuk menampilkan daftar teks, gambar, atau widget lainnya.

a. **Menambahkan ListView Sederhana**:
Buat file `lib/pages/listview_page.dart` untuk menampilkan daftar item:
```dart
import 'package:flutter/material.dart';

class ListViewPage extends StatelessWidget {
  final List<String> items = List<String>.generate(20, (i) => "Item $i");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView Example'),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(Icons.list),
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

```
**Penjelasan Kode**:
- **ListView.builder**: digunakan untuk membuat daftar dinamis dengan jumlah item yang besar.
- **ListTile**: adalah widget yang ideal untuk menampilkan item daftar dengan leading (ikon) dan title (teks).

**Hasil**
![image](https://github.com/user-attachments/assets/5579f07c-a27f-49c9-9282-b9d6e5a14e63)


## 2. GridView di Flutter
`GridView` digunakan untuk menampilkan data dalam tata letak grid (baris dan kolom). Anda dapat menggunakannya untuk menampilkan galeri gambar atau kumpulan data lainnya.

a. **Menambahkan GridView Sederhana**:
Buat file `lib/pages/gridview_page.dart` untuk menampilkan grid item:
```dart
import 'package:flutter/material.dart';

class GridViewPage extends StatelessWidget {
  final List<String> items = List<String>.generate(20, (i) => "Item $i");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GridView Example'),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // Jumlah item per baris
        ),
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Card(
            color: Colors.blueAccent,
            child: Center(
              child: Text(
                items[index],
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
          );
        },
      ),
    );
  }
}

```
**Penjelasan Kode**:
- `GridView.builder`: digunakan untuk membuat grid dinamis.
- `SliverGridDelegateWithFixedCrossAxisCount` : menentukan berapa banyak item yang akan ditampilkan di setiap baris (contohnya, 2 item per baris).
- **Card** : digunakan untuk menampilkan item dalam tampilan kartu..

**Hasil**:
![image](https://github.com/user-attachments/assets/6f4b9367-5faa-46bc-b43b-0da0b73b02a1)


## 3. Flutter Navigation (Navigasi antar Halaman)
Flutter menyediakan cara yang mudah untuk berpindah antar halaman menggunakan widget `Navigator` dan metode `push` serta `pop`. Metode `push` digunakan untuk berpindah ke halaman baru, sementara `pop` digunakan untuk kembali ke halaman sebelumnya.

a.  **Contoh Flutter Navigation Sederhana**:
menghubungkan halaman-halaman **ListView** dan **GridView** dengan halaman utama menggunakan navigasi.

Buka file `lib/main.dart` dan buat tombol untuk mengarahkan ke halaman **ListView** dan **GridView**:

```dart
import 'package:flutter/material.dart';
import 'pages/listview_page.dart';
import 'pages/gridview_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Navigation Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
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
              child: Text('Go to ListView Page'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => GridViewPage()),
                );
              },
              child: Text('Go to GridView Page'),
            ),
          ],
        ),
      ),
    );
  }
}

```

**Penjelasan Kode**:
- `Navigator.push`: digunakan untuk berpindah ke halaman baru. Di sini, kita membuat tombol untuk mengarahkan ke halaman **ListView** dan **GridView**.
- Halaman HomePage menjadi halaman utama yang menampilkan dua tombol untuk navigasi.


## 4 Menambahkan Navigasi Kembali
Untuk menavigasi kembali ke halaman sebelumnya, cukup gunakan Navigator.pop pada halaman yang dituju. Misalnya, pada halaman `listview_page.dart`:

```dart
...
onTap: () {
  Navigator.pop(context); // Kembali ke halaman sebelumnya
},
...

```

## Struktur Final Project

```css
lib/
├── main.dart
└── pages/
    ├── gridview_page.dart
    └── listview_page.dart

```

---

## Referensi

- [Flutter Documentation - ListView](https://api.flutter.dev/flutter/widgets/ListView-class.html)
- [Flutter Documentation - GridView](https://api.flutter.dev/flutter/widgets/GridView-class.html)
- [Flutter Documentation - Navigation](https://docs.flutter.dev/ui/navigation)