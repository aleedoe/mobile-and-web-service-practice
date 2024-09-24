# Tutorial: Install Flutter Tanpa Android Studio dan Menjalankan "Hello World!"

## Pendahuluan
Halo! Pada tutorial ini, saya akan memandu kalian langkah demi langkah untuk menginstal Flutter **tanpa menggunakan Android Studio** dan menjalankan aplikasi Flutter sederhana yang menampilkan "Hello World!".

## Persyaratan
- Sistem operasi: **Windows**, **macOS**, atau **Linux**
- **Flutter SDK**
- **Android SDK** (tanpa Android Studio)
- Emulator atau perangkat Android (opsional)

---

## 1. Install Flutter SDK

### a. Download Flutter SDK
1. Buka halaman [Flutter SDK](https://flutter.dev/docs/get-started/install).
2. Pilih sistem operasi kalian (Windows, macOS, atau Linux).
3. Download Flutter SDK dan ekstrak ke folder yang kalian inginkan. Misalnya, `C:\src\flutter` untuk Windows atau `~/flutter` untuk macOS/Linux.

### b. Tambahkan Flutter ke PATH
#### Windows:
1. Buka **Control Panel** > **System and Security** > **System**.
2. Pilih **Advanced system settings**, klik **Environment Variables**.
3. Pada **User variables**, pilih **Path** dan klik **Edit**.
4. Tambahkan direktori Flutter `C:\src\flutter\bin` dan klik **OK**.

#### macOS/Linux:
1. Buka terminal dan edit file `~/.bashrc` atau `~/.zshrc`.
2. Tambahkan baris berikut:
    ```bash
    export PATH="$PATH:/path/to/flutter/bin"
    ```
3. Simpan file dan jalankan:
    ```bash
    source ~/.bashrc
    ```

### c. Verifikasi Instalasi
Buka terminal atau command prompt dan jalankan:
```bash
flutter doctor
```
