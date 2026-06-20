import 'package:flutter/material.dart';
import '../../../core/widgets/app_shell.dart';
class ReportsPage extends StatelessWidget { const ReportsPage({super.key}); @override Widget build(BuildContext context) => AppShell(title: 'Reports', child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [const Text('Generate representative, sales, product, customer, and financial exports.'), const SizedBox(height: 16), FilledButton.icon(onPressed: () {}, icon: const Icon(Icons.add), label: const Text('Create / Export'))])); }
