# BclinnkApp - iOS WebView

Aplikasi iOS native yang menampilkan website [cm.bclinnk.com](http://cm.bclinnk.com/) menggunakan **WKWebView** (Swift + SwiftUI).

## ✨ Fitur

- **WKWebView** full-screen dengan loading bar
- **Pull-to-refresh** untuk reload halaman
- **Penanganan error** dengan tampilan "Tidak Dapat Terhubung" dan tombol Coba Lagi
- **Buka link native**: `tel:`, `mailto:`, `whatsapp://` dibuka langsung ke aplikasi terkait
- **JavaScript dialogs**: Alert dan Confirm dialog dari web berfungsi normal
- **Orientasi**: Portrait di iPhone, Portrait + Landscape di iPad

## 📱 Persyaratan

- iOS 16.0+
- Xcode 15.0+
- Swift 5.0+

## 🚀 Build via GitHub Actions

Project ini menggunakan GitHub Actions untuk build di macOS runner (gratis untuk repo publik).

### Langkah-langkah:

1. **Buat repository di GitHub** (public untuk gratis unlimited):
   ```
   Buka https://github.com/new → buat repo baru
   ```

2. **Push kode**:
   ```bash
   cd BclinnkApp
   git init
   git add .
   git commit -m "Initial commit - BclinnkApp iOS WebView"
   git remote add origin https://github.com/USERNAME/BclinnkApp.git
   git branch -M main
   git push -u origin main
   ```

3. **Tunggu build selesai** — cek tab "Actions" di GitHub.

4. **Download hasil build**:
   - Buka tab **Actions** → klik workflow run terbaru
   - Download artifact **BclinnkApp-unsigned-ipa**

## 📲 Install ke iPhone (Tanpa Apple Developer Account Berbayar)

Karena .ipa tidak di-sign, kamu perlu sideload menggunakan salah satu tool ini:

### Opsi 1: Sideloadly (Rekomendasi)
1. Download [Sideloadly](https://sideloadly.io/) di PC/Mac
2. Hubungkan iPhone via USB
3. Drag & drop file `.ipa` ke Sideloadly
4. Masukkan Apple ID kamu
5. Klik "Start"
6. Di iPhone: **Settings → General → VPN & Device Management** → Trust developer

> ⚠️ Dengan Apple ID gratis, app harus di-reinstall setiap **7 hari**.
> Dengan Apple Developer Account ($99/tahun), berlaku **1 tahun**.

### Opsi 2: AltStore
1. Download [AltStore](https://altstore.io/) di PC/Mac
2. Install AltServer, lalu install AltStore ke iPhone
3. Buka AltStore di iPhone → tab "My Apps" → klik "+" → pilih file .ipa

## 📂 Struktur Project

```
BclinnkApp/
├── .github/
│   └── workflows/
│       └── build-ios.yml          ← GitHub Actions workflow
├── BclinnkApp/
│   ├── BclinnkApp.swift           ← Entry point (@main)
│   ├── ContentView.swift          ← Root view + error screen
│   ├── Info.plist                 ← ATS exception, permissions
│   ├── Assets.xcassets/           ← App icon & colors
│   └── Views/
│       └── WebViewContainer.swift ← WKWebView implementation
├── BclinnkApp.xcodeproj/
│   └── project.pbxproj            ← Xcode project config
├── .gitignore
└── README.md
```

## 🎨 App Icon

Untuk menambahkan app icon:
1. Siapkan gambar **1024x1024 px** (PNG, tanpa transparansi)
2. Gunakan [App Icon Generator](https://www.appicon.co/) untuk generate semua ukuran
3. Taruh file-file icon ke `BclinnkApp/Assets.xcassets/AppIcon.appiconset/`
4. Update `Contents.json` di folder tersebut sesuai nama file

## 📝 Konfigurasi

| Setting | Nilai |
|---|---|
| Bundle ID | `com.bclinnk.app` |
| Display Name | Bclinnk |
| Target URL | `http://cm.bclinnk.com/` |
| Min iOS | 16.0 |
| Orientasi | Portrait (iPhone), All (iPad) |
| ATS Exception | HTTP allowed untuk `*.bclinnk.com` |

## 📄 Lisensi

Private project - Hak cipta © 2024 BC Solutions

