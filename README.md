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

- Bahasa Pemrograman untuk Mobile Service
  - **Java**: Bahasa pemrograman utama untuk pengembangan aplikasi Android. Banyak library dan framework yang tersedia untuk membuat aplikasi yang efisien dan scalable.
  - **Kotlin**: Alternatif modern untuk Java, Kotlin dirancang oleh JetBrains dan merupakan bahasa resmi untuk pengembangan Android. Kotlin lebih ringkas dan aman dari kesalahan null pointer dibandingkan dengan Java.
  - **Swift**: Digunakan untuk pengembangan aplikasi iOS. Swift adalah bahasa yang dirancang oleh Apple dan merupakan penerus dari Objective-C, menawarkan sintaks yang lebih sederhana dan performa yang lebih baik untuk aplikasi mobile di ekosistem Apple.
  - **Dart**: Bahasa pemrograman yang digunakan bersama dengan Flutter framework. Dart menawarkan performa yang cepat dan cocok untuk pengembangan aplikasi mobile cross-platform, artinya satu kode bisa dijalankan baik di Android maupun iOS.
  - **JavaScript/TypeScript**: Meskipun bukan bahasa asli untuk pengembangan mobile, JavaScript dan TypeScript digunakan dalam framework mobile cross-platform seperti React Native dan Ionic untuk membangun aplikasi mobile yang bisa berjalan di Android dan iOS.

- Bahasa Pemrograman untuk Web Service
  - **JavaScript/TypeScript**: Sangat populer untuk pengembangan web baik di sisi frontend maupun backend. Dengan Node.js, JavaScript dapat digunakan untuk menulis server-side logic, membuat aplikasi berbasis API, dan menangani web service. TypeScript, sebagai superset dari JavaScript, menawarkan typing yang lebih kuat dan lebih mudah dikelola dalam proyek besar.
  - **Python**: Bahasa yang banyak digunakan untuk membangun web service berkat framework seperti Django dan Flask. Python menawarkan pengembangan yang cepat dan mudah, terutama untuk membangun RESTful APIs.
  - **Ruby**: Bahasa pemrograman yang digunakan bersama Ruby on Rails, yang terkenal untuk pengembangan web yang cepat dan efisien. Ruby sering digunakan untuk membangun aplikasi web service yang berskala kecil hingga menengah.
  - **PHP**: Sering digunakan untuk membangun web service pada aplikasi berbasis web. Framework seperti Laravel mempermudah pengembangan API RESTful dan aplikasi web.
  - **Java**: Java sering digunakan untuk membangun web service berbasis enterprise yang membutuhkan skalabilitas dan performa tinggi. Framework seperti Spring Boot sangat populer untuk membangun aplikasi web dan microservices di Java.
  - **Go (Golang)**: Bahasa yang dikenal dengan performa tinggi dan efisiensi. Go banyak digunakan untuk membangun layanan web yang skalabel dan cepat, seperti API RESTful dan microservices.
  - **C#**: Umumnya digunakan dalam ekosistem Microsoft, terutama untuk membangun web service berbasis .NET. ASP.NET Core adalah framework yang digunakan bersama C# untuk membangun API dan aplikasi web dengan performa tinggi.

## Framework Bahasa Pemrograman

- Framework untuk Mobile Service
  - **Android SDK**: Framework resmi yang digunakan untuk pengembangan aplikasi Android. Android SDK menyediakan alat, library, dan dokumentasi untuk membantu pengembang membangun aplikasi native.
  - **iOS SDK**: Digunakan untuk pengembangan aplikasi native di iOS. iOS SDK menyediakan akses ke fitur perangkat seperti kamera, GPS, dan lainnya dalam ekosistem Apple.
  - **React Native**: Framework open-source yang dikembangkan oleh Facebook, memungkinkan pengembang membangun aplikasi mobile untuk Android dan iOS dengan satu basis kode JavaScript atau TypeScript. React Native sangat cocok untuk aplikasi mobile yang ingin dikembangkan lebih cepat dan membutuhkan kinerja yang mendekati native.
  - **Flutter**: Framework yang dikembangkan oleh Google dan menggunakan bahasa Dart. Flutter memungkinkan pengembangan aplikasi mobile cross-platform (Android dan iOS) dengan UI yang sangat fleksibel dan performa yang cepat.
  - **Xamarin**: Framework dari Microsoft yang memungkinkan pengembangan aplikasi mobile untuk berbagai platform (Android, iOS, dan Windows) dengan menggunakan bahasa C#. Xamarin sangat cocok untuk pengembang yang terbiasa dengan teknologi .NET.
  - **Ionic**: Framework open-source yang digunakan untuk membangun aplikasi mobile hybrid dengan menggunakan teknologi web (HTML, CSS, dan JavaScript). Ionic cocok untuk aplikasi sederhana dengan performa yang tidak kritikal.

- Framework untuk Web Service
  - **Node.js + Express**: Express adalah framework minimalis untuk Node.js yang memudahkan pembuatan aplikasi web dan API. Dengan ekosistem yang luas, kombinasi Node.js dan Express menjadi sangat populer untuk membangun RESTful API dan layanan backend.
  - **Django**: Framework web berbasis Python yang sangat powerful, menyediakan berbagai fitur untuk pengembangan web service seperti ORM, admin panel otomatis, dan autentikasi. Django cocok untuk aplikasi besar dan skala enterprise.
  - **Flask**: Framework micro untuk Python yang memungkinkan pengembang membangun API dan web service dengan lebih fleksibel dan ringan. Flask sering digunakan untuk proyek-proyek yang membutuhkan kontrol penuh atas arsitektur.
  - **Spring Boot**: Framework berbasis Java yang digunakan untuk membangun aplikasi web dan microservices. Spring Boot terkenal dalam dunia enterprise untuk skala besar dengan dukungan yang luas untuk integrasi, keamanan, dan manajemen data.
  - **Ruby on Rails**: Framework berbasis Ruby yang terkenal dengan pendekatan "convention over configuration", memudahkan pengembangan aplikasi web dan API dengan cepat.
  - **ASP.NET Core**: Framework dari Microsoft untuk pengembangan aplikasi web dan API menggunakan C#. ASP.NET Core menawarkan performa tinggi, keamanan, dan kemampuan untuk mengembangkan aplikasi lintas platform.
  - **FastAPI**: Framework Python yang sangat cepat dan modern untuk membangun API dengan tipe data yang kuat menggunakan Python type hints. FastAPI sering digunakan untuk aplikasi yang membutuhkan performa tinggi dan respons cepat.
  - **Laravel**: Framework PHP yang sangat populer untuk pengembangan web service. Laravel menawarkan fitur lengkap seperti routing, ORM (Eloquent), dan dukungan yang baik untuk membangun API RESTful.
  - **Go (Golang) + Gin**: Gin adalah framework web untuk Go yang ringan dan sangat cepat, cocok untuk membangun API RESTful dan layanan web dengan performa tinggi. Go sering digunakan dalam aplikasi yang membutuhkan efisiensi dan skalabilitas.
