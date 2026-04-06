# Connect X HR Attendance System

A Flutter app for managing student attendance via QR codes, AI-powered session management, and Google Sheets integration — built entirely on free-tier services.

---

## Features

- Create and manage attendance sessions
- Generate and email QR codes to students
- Scan QR codes to mark attendance instantly
- Sync and visualize attendance in Google Sheets
- AI-powered assistant for session management

---

## Tech Stack

- **Flutter** with **Bloc** and **Go Router**
- **Firebase** Authentication & Firestore
- **QR generation/scan**: `qr_flutter`, `mobile_scanner`
- **Email**: Resend API
- **Google Sheets**: `googleapis` Dart package
- **Charts**: `fl_chart`
- **AI**: Google Gemini 2.5
- **Secure storage**: `flutter_secure_storage`

---

## Setup

```bash
git clone https://github.com/your-org/connectx-hr.git
cd connectx-hr
flutter pub get
```
