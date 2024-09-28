# Install Flutter Tanpa Android Studio dan Menjalankan "Hello World!"

## Pendahuluan
Halo! Pada tutorial ini, saya akan membuat langkah-langkah untuk menginstal Flutter **tanpa menggunakan Android Studio** dan menjalankan aplikasi Flutter sederhana yang menampilkan "Hello World!".

## Persyaratan
- Sistem operasi: **Windows**, **macOS**, atau **Linux**
- **Flutter SDK**
- **Android SDK** (tanpa Android Studio)
- Emulator atau perangkat Android (opsional)

---

## 1. Install Flutter SDK

### a. Download Flutter SDK

![image](https://github.com/user-attachments/assets/08c759bb-ab55-4e99-9ca4-7e97abed9d7d)

1. Buka halaman [Flutter SDK](https://flutter.dev/docs/get-started/install).
2. Pilih sistem operasi (Windows, macOS, atau Linux).
3. Download Flutter SDK dan ekstrak ke folder yang di inginkan. Misalnya, `C:\src\flutter` untuk Windows atau `~/flutter` untuk macOS/Linux.

### b. Tambahkan Flutter ke PATH
#### Windows:
![image](https://github.com/user-attachments/assets/adf4f834-fe7a-4c70-8477-6613db3e8beb)
1. Buka **Control Panel** > **System and Security** > **System**.
2. Pilih **Advanced system settings**, klik **Environment Variables**.
3. Pada **User variables**, pilih **Path** dan klik **Edit**.
4. Tambahkan direktori Flutter `C:\src\flutter\bin` dan klik **OK**.

### c. Verifikasi Instalasi
![image](https://github.com/user-attachments/assets/87d9e2b4-202e-4572-837d-ae6ecd78bb1b)
Buka terminal atau command prompt dan jalankan:
```bash
flutter doctor
```

## 2. Install Android SDK (Tanpa Android Studio)

### a. Download Android Command Line Tools

![image](https://github.com/user-attachments/assets/6278e723-cb7b-4eec-a483-a5b71836fe98)

1. Buka [Android Command Line Tools](https://developer.android.com/studio#command-tools) dan download sesuai sistem operasi.
2. Ekstrak ke folder seperti `C:\Android\cmdline-tools` (untuk Windows) atau `~/Android/cmdline-tools` (untuk macOS/Linux).

### b. Tambahkan Android SDK ke PATH
#### Windows:
![image](https://github.com/user-attachments/assets/774f4eaa-0a16-43b3-9eca-8533aa28addc)
1. Tambahkan `C:\Android\cmdline-tools\bin` ke Path pada Environment Variables.


### c. Install SDK dan Tools yang Diperlukan
1. Buka terminal atau command prompt, jalankan:
    ```bash
    sdkmanager --sdk_root="C:\path\to\your\android\sdk" --install "platform-tools" "platforms;android-33" "build-tools;33.0.0"
    ```
    ![image](https://github.com/user-attachments/assets/cecb6949-5c13-41d8-9e14-2be92b76d0ec)

### d. Setujui Lisensi Android SDK
1. Setujui lisensi Android SDK dengan menjalankan:
    ```bash
    sdkmanager --sdk_root="C:\Users\<your-username>\AppData\Local\Android\Sdk" --licenses
    ```
    ![image](https://github.com/user-attachments/assets/5d2e4ae7-4d34-4250-ada3-ea5750892097)

## 3. Konfigurasi Emulator Android

### a. Install AVD Manager
```bash
sdkmanager --install "emulator" "system-images;android-33;google_apis;x86_64"
```

### b. Buat Emulator
```bash
avdmanager create avd -n flutter_emulator -k "system-images;android-33;google_apis;x86_64"
```

### c. Jalankan Emulator
```bash
emulator -avd flutter_emulator
```

## 4. Membuat dan Menjalankan Proyek Flutter

### a. Buat Proyek Flutter
Buka terminal dan arahkan ke folder tempat yang ingin menyimpan proyek, lalu jalankan:

```bash
flutter create hello_world
cd hello_world
```

### b. Jalankan Proyek
Jika menggunakan emulator atau perangkat Android yang sudah terhubung, jalankan perintah berikut untuk menjalankan aplikasi:

```bash
flutter run
```

## 5. Modifikasi "Hello World!"
Buka file lib/main.dart di editor teks dan ubah kode menjadi seperti ini untuk menampilkan teks "Hello World!":

```bash
import 'package:flutter/material.dart';

void main() {
runApp(MyApp());
}

class MyApp extends StatelessWidget {
@override
Widget build(BuildContext context) {
    return MaterialApp(
    title: 'Flutter Demo',
    home: MyHomePage(),
    );
}
}

class MyHomePage extends StatelessWidget {
@override
Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
        title: Text('Hello World App'),
    ),
    body: Center(
        child: Text(
        'Hello World!',
        style: TextStyle(fontSize: 24),
        ),
    ),
    );
}
}
```
