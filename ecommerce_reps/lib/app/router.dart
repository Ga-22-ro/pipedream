import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../features/auth/presentation/login_page.dart';
import '../features/dashboard/presentation/dashboard_page.dart';
import '../features/representatives/presentation/representatives_page.dart';
import '../features/customers/presentation/customers_page.dart';
import '../features/products/presentation/products_page.dart';
import '../features/orders/presentation/orders_page.dart';
import '../features/financial/presentation/financial_page.dart';
import '../features/reports/presentation/reports_page.dart';
import '../features/settings/presentation/settings_page.dart';

final routerProvider = Provider<GoRouter>((ref) => GoRouter(initialLocation: '/dashboard', routes: [
  GoRoute(path: '/login', builder: (_, __) => const LoginPage()),
  GoRoute(path: '/dashboard', builder: (_, __) => const DashboardPage()),
  GoRoute(path: '/representatives', builder: (_, __) => const RepresentativesPage()),
  GoRoute(path: '/customers', builder: (_, __) => const CustomersPage()),
  GoRoute(path: '/products', builder: (_, __) => const ProductsPage()),
  GoRoute(path: '/orders', builder: (_, __) => const OrdersPage()),
  GoRoute(path: '/financial', builder: (_, __) => const FinancialPage()),
  GoRoute(path: '/reports', builder: (_, __) => const ReportsPage()),
  GoRoute(path: '/settings', builder: (_, __) => const SettingsPage()),
]));
