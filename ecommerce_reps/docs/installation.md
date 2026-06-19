# Installation Guide

1. Install Flutter stable, Node.js 20, Firebase CLI, and Vercel CLI.
2. Create a Firebase project with Authentication, Firestore, Storage, Functions, Hosting, and Cloud Messaging enabled.
3. Copy `.firebaserc.example` to `.firebaserc` and set the Firebase project id.
4. Provide Firebase options with `--dart-define` values or generate `lib/firebase_options.dart` via FlutterFire CLI.
5. Run `flutter pub get` and `cd functions && npm install && npm run build`.
