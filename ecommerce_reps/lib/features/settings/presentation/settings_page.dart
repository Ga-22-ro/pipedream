import 'package:flutter/material.dart';
import '../../../core/widgets/app_shell.dart';
class SettingsPage extends StatelessWidget { const SettingsPage({super.key}); @override Widget build(BuildContext context) => AppShell(title: 'Settings', child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [const Text('Manage company name, logo, currency, shipping defaults, and permissions.'), const SizedBox(height: 16), FilledButton.icon(onPressed: () {}, icon: const Icon(Icons.add), label: const Text('Create / Export'))])); }
