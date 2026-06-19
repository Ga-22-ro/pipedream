import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppShell extends StatelessWidget {
  const AppShell({required this.title, required this.child, super.key});
  final String title;
  final Widget child;
  @override Widget build(BuildContext context) {
    final items = {'Dashboard':'/dashboard','Representatives':'/representatives','Customers':'/customers','Products':'/products','Orders':'/orders','Financial':'/financial','Reports':'/reports','Settings':'/settings'};
    return Scaffold(appBar: AppBar(title: Text(title)), drawer: NavigationDrawer(children: [const DrawerHeader(child: Text('ESRMS')), for (final e in items.entries) ListTile(title: Text(e.key), onTap: () => context.go(e.value))]), body: SafeArea(child: Padding(padding: const EdgeInsets.all(16), child: child)));
  }
}
