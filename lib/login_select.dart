import 'package:flutter/material.dart';
import 'admin_dashboard.dart';
import 'shopkeeper_dashboard.dart';
import 'transporter_page.dart';

class LoginSelect extends StatelessWidget {
  const LoginSelect({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Login Selection")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _btn(context, "Admin", const AdminDashboard()),
            _btn(context, "Shopkeeper", const ShopkeeperDashboard()),
            _btn(context, "Transporter", const TransporterPage()),
          ],
        ),
      ),
    );
  }

  Widget _btn(BuildContext c, String t, Widget p) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: ElevatedButton(
        onPressed: () => Navigator.push(c, MaterialPageRoute(builder: (_) => p)),
        child: Text(t),
      ),
    );
  }
}