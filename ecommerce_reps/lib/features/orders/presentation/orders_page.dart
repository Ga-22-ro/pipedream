import 'package:flutter/material.dart';
import '../../../core/widgets/app_shell.dart';
class OrdersPage extends StatelessWidget { const OrdersPage({super.key}); @override Widget build(BuildContext context) => AppShell(title: 'Orders', child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [const Text('Create orders, change status, search, filter, and calculate profit.'), const SizedBox(height: 16), FilledButton.icon(onPressed: () {}, icon: const Icon(Icons.add), label: const Text('Create / Export'))])); }
