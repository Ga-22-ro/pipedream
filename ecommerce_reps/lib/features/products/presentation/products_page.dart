import 'package:flutter/material.dart';
import '../../../core/widgets/app_shell.dart';
class ProductsPage extends StatelessWidget { const ProductsPage({super.key}); @override Widget build(BuildContext context) => AppShell(title: 'Products', child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [const Text('Create products, upload images, search, and import from SHEIN.'), const SizedBox(height: 16), FilledButton.icon(onPressed: () {}, icon: const Icon(Icons.add), label: const Text('Create / Export'))])); }
