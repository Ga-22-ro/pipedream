import 'package:flutter/material.dart';
import '../../../core/widgets/app_shell.dart';
class CustomersPage extends StatelessWidget { const CustomersPage({super.key}); @override Widget build(BuildContext context) => AppShell(title: 'Customers', child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [const Text('Add, edit, search, delete customers and view order history.'), const SizedBox(height: 16), FilledButton.icon(onPressed: () {}, icon: const Icon(Icons.add), label: const Text('Create / Export'))])); }
