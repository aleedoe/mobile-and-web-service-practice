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


## 2. Install Android SDK (Tanpa Android Studio)

### a. Download Android Command Line Tools
1. Buka [Android Command Line Tools](https://developer.android.com/studio#command-tools) dan download sesuai sistem operasi.
2. Ekstrak ke folder seperti `C:\Android\cmdline-tools` (untuk Windows) atau `~/Android/cmdline-tools` (untuk macOS/Linux).

### b. Tambahkan Android SDK ke PATH
#### Windows:
1. Tambahkan `C:\Android\cmdline-tools\bin` ke Path pada Environment Variables.

#### macOS/Linux:
1. Tambahkan baris berikut ke `~/.bashrc` atau `~/.zshrc`:
    ```bash
    export ANDROID_HOME=$HOME/Android
    export PATH=$PATH:$ANDROID_HOME/cmdline-tools/bin
    ```
2. Simpan dan jalankan:
    ```bash
    source ~/.bashrc   # atau source ~/.zshrc
    ```

### c. Install SDK dan Tools yang Diperlukan
1. Buka terminal atau command prompt, jalankan:
    ```bash
    sdkmanager --install "platform-tools" "platforms;android-33" "build-tools;33.0.0"
    ```

### d. Setujui Lisensi Android SDK
1. Setujui lisensi Android SDK dengan menjalankan:
    ```bash
    sdkmanager --licenses
    ```

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
