# Deployment Guide

## Web / PWA
Run `flutter build web --release` and deploy `build/web` to Firebase Hosting or Vercel. `vercel.json` rewrites routes to `index.html` for Flutter web.

## Firebase
Deploy security rules, indexes, storage rules, hosting, and functions with `firebase deploy` from `ecommerce_reps`.

## Android
The GitHub Actions workflow builds a release APK at `build/app/outputs/flutter-apk/app-release.apk`.
