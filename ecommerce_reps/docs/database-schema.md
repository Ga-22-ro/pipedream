# Firestore Database Schema

Collections: `users`, `roles`, `representatives`, `customers`, `products`, `orders`, `financial_transactions`, `notifications`, `settings`, and `activity_logs`.

All business documents include `createdAt`, `updatedAt`, `createdBy`, and tenant-ready ownership fields. Representatives are linked to Auth users with `userId`; representative-owned customer and order records use `representativeId` for security-rule isolation.

## Orders
Statuses are `new`, `confirmed`, `shipped`, `delivered`, `returned`, and `cancelled`. Store computed `totalAmount`, `shippingCost`, and `profit` to support dashboards and exports.
