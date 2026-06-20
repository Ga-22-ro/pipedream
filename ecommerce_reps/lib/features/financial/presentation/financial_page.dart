import 'package:flutter/material.dart';
import '../../../core/widgets/app_shell.dart';
class FinancialPage extends StatelessWidget { const FinancialPage({super.key}); @override Widget build(BuildContext context) => AppShell(title: 'Financial', child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [const Text('Track revenue, expenses, profit, and export reports.'), const SizedBox(height: 16), FilledButton.icon(onPressed: () {}, icon: const Icon(Icons.add), label: const Text('Create / Export'))])); }
