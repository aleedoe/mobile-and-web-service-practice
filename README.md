## IDENTITAS
- Nama : Mushyafa Ali
- NPM : 5220411358
- Deskripsi : repositori ini berisi mengenai hasil pembelajaran dari mata kuliah Mobile & Web Service Praktek
- Untuk hasil pembelajaran pada tiap pertemuan perkuliahan itu ada di **sub branch** yang bernama `pertemuan-n`

---

# Materi Pengantar
Mobile Service dan Web Service adalah istilah yang sering digunakan dalam pengembangan aplikasi yang berfokus pada komunikasi antar sistem melalui jaringan. Keduanya memiliki tujuan yang sama, yaitu menyediakan layanan atau fungsi tertentu kepada pengguna, tetapi berbeda dalam hal platform dan cara pengoperasiannya.

## 1. Mobile Service
Mobile service mengacu pada layanan yang dirancang untuk perangkat mobile seperti smartphone dan tablet. Ini bisa mencakup berbagai bentuk layanan, baik berbasis internet maupun tidak, dan sering kali melibatkan aplikasi yang berfungsi pada platform mobile (seperti Android atau iOS).

Jenis-Jenis Mobile Service:

- **Mobile Application**: Aplikasi yang diunduh dan diinstal di perangkat mobile. Ini bisa berupa aplikasi komunikasi, media sosial, game, e-commerce, atau aplikasi bisnis.
- **Push Notifications**: Pesan yang dikirimkan dari server ke aplikasi mobile yang berjalan di latar belakang, memberi notifikasi kepada pengguna.
- **Mobile Payment**: Layanan pembayaran yang dapat dilakukan melalui perangkat mobile seperti aplikasi dompet digital (e.g., Google Pay, Apple Pay).
- **Location-based Services**: Layanan yang menggunakan GPS perangkat untuk menyediakan konten atau informasi berdasarkan lokasi pengguna (misalnya, Google Maps atau aplikasi ride-sharing seperti Gojek/Grab).

## 2. Web Service
Web service adalah teknologi yang memungkinkan komunikasi antar perangkat atau aplikasi melalui jaringan (biasanya internet). Web service menggunakan protokol seperti HTTP untuk bertukar data antar aplikasi yang bisa berjalan di platform yang berbeda. Web service umumnya berjalan di server dan dapat diakses melalui permintaan (request) dari klien.

Karakteristik Web Service:

- **Berbasis Protokol Standar**: Web service biasanya menggunakan HTTP, SOAP, atau RESTful APIs untuk komunikasi. RESTful API cenderung lebih banyak digunakan karena lebih sederhana dan lebih fleksibel dibandingkan SOAP.
- **Platform Agnostic**: Web service bisa diakses dari berbagai jenis platform atau perangkat (desktop, mobile, tablet) tanpa tergantung pada sistem operasi atau bahasa pemrograman tertentu.
- **Data Format**: Web service sering kali menggunakan format data standar seperti XML atau JSON untuk pertukaran data antar aplikasi.

Jenis-Jenis Web Service:

- **SOAP (Simple Object Access Protocol)**: Protokol yang lebih tua dan formal untuk pertukaran informasi yang menggunakan XML dan biasanya digunakan dalam aplikasi yang membutuhkan transaksi yang aman dan kompleks.
- **REST (Representational State Transfer)**: Arsitektur layanan web yang lebih ringan dan lebih umum digunakan dalam pengembangan API modern. REST menggunakan HTTP dan sering kali dikombinasikan dengan format data JSON untuk pertukaran data yang cepat dan mudah dipahami.


## Perbandingan Mobile Service dan Web Service
| Aspek             | Mobile Service                                      | Web Service                                           |
|-------------------|-----------------------------------------------------|-------------------------------------------------------|
| Platform          | Berfokus pada perangkat mobile (Android, iOS)       | Tidak bergantung pada platform tertentu (web, mobile, desktop) |
| Contoh Teknologi  | Android SDK, iOS SDK, Firebase, Push Notifications  | RESTful API, SOAP, HTTP, JSON, XML                    |
| Pengguna          | Aplikasi mobile yang dijalankan di smartphone/tablet| Aplikasi apa pun yang terhubung ke internet           |
| Penggunaan Data   | Bisa online atau offline (dalam beberapa kasus)     | Selalu membutuhkan koneksi internet                   |
| Akses             | Dijalankan oleh aplikasi mobile yang diunduh        | Diakses melalui HTTP request dari berbagai jenis aplikasi |

## Bahasa Pemrograman

a. Bahasa Pemrograman untuk Mobile Service
  - **Java**: Bahasa pemrograman utama untuk pengembangan aplikasi Android. Banyak library dan framework yang tersedia untuk membuat aplikasi yang efisien dan scalable.

  - **Kotlin**: Alternatif modern untuk Java, Kotlin dirancang oleh JetBrains dan merupakan bahasa resmi untuk pengembangan Android. Kotlin lebih ringkas dan aman dari kesalahan null pointer dibandingkan dengan Java.

  - **Swift**: Digunakan untuk pengembangan aplikasi iOS. Swift adalah bahasa yang dirancang oleh Apple dan merupakan penerus dari Objective-C, menawarkan sintaks yang lebih sederhana dan performa yang lebih baik untuk aplikasi mobile di ekosistem Apple.

  - **Dart**: Bahasa pemrograman yang digunakan bersama dengan Flutter framework. Dart menawarkan performa yang cepat dan cocok untuk pengembangan aplikasi mobile cross-platform, artinya satu kode bisa dijalankan baik di Android maupun iOS.

  - **JavaScript/TypeScript**: Meskipun bukan bahasa asli untuk pengembangan mobile, JavaScript dan TypeScript digunakan dalam framework mobile cross-platform seperti React Native dan Ionic untuk membangun aplikasi mobile yang bisa berjalan di Android dan iOS.
