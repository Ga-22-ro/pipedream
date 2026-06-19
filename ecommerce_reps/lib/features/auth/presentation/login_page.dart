import 'package:flutter/material.dart';
import '../../../core/widgets/app_shell.dart';

class LoginPage extends StatefulWidget { const LoginPage({super.key}); @override State<LoginPage> createState() => _LoginPageState(); }
class _LoginPageState extends State<LoginPage> { bool remember = true; @override Widget build(BuildContext context) => AppShell(title: 'Login', child: Center(child: ConstrainedBox(constraints: const BoxConstraints(maxWidth: 420), child: Column(mainAxisSize: MainAxisSize.min, children: [const TextField(decoration: InputDecoration(labelText: 'Email')), const SizedBox(height: 12), const TextField(obscureText: true, decoration: InputDecoration(labelText: 'Password')), CheckboxListTile(value: remember, onChanged: (v) => setState(() => remember = v ?? false), title: const Text('Remember me')), FilledButton(onPressed: () {}, child: const Text('Login')), TextButton(onPressed: () {}, child: const Text('Reset password'))]))); }
