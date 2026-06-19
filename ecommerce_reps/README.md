# Electronic Stores Representatives Management System

Production-oriented Flutter + Firebase SaaS platform for managing representatives, customers, products, SHEIN imports, orders, financials, notifications, reports, and settings for online stores.

## Architecture

- Clean Architecture with feature-based folders under `lib/features`.
- Repository Pattern for Firebase Auth, Cloud Functions, and future Firestore repositories.
- Riverpod-ready application shell and routing.
- Firebase Authentication, Cloud Firestore, Firebase Storage, Cloud Functions, Firebase Hosting.
- Responsive Flutter Web, Android APK, and PWA deployment.

## RBAC

Roles are `superAdmin`, `admin`, and `representative`. Firestore rules enforce isolated representative access, admin management privileges, and Super Admin-only system configuration.

## Modules

- Authentication: login, logout repository, password reset, remember me, profile-ready Auth stream.
- Dashboard: order, revenue, and performance KPI surface with chart support.
- Representatives: add, edit, suspend, delete, and performance review surface.
- Customers: add, edit, search, delete, order history ready.
- Products: create, edit, delete, search, product image support, and SHEIN import repository.
- Orders: status workflow, auto calculations, search/filter-ready structure.
- Financial: revenue, expenses, profit, and export-ready reporting.
- Notifications: Firebase Cloud Messaging-ready collection and event model.
- Reports: PDF and Excel dependencies included for business exports.
- Settings: company, logo, currency, shipping defaults, and permissions.

## Development

```bash
cd ecommerce_reps
flutter pub get
flutter test
```

## Firebase

```bash
cd ecommerce_reps/functions
npm install
npm run build
cd ..
firebase deploy
```

## Deployment

See `docs/installation.md`, `docs/deployment.md`, and `docs/database-schema.md`.
