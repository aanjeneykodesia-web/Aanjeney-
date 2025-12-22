import 'package:flutter/material.dart';

class AdminDashboard extends StatelessWidget {
  const AdminDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Admin Dashboard")),
      body: ListView(
        padding: const EdgeInsets.all(12),
        children: const [
          Text("All Shopkeepers"),
          Text("All Manufacturers"),
          Text("All Transporters"),
          Text("All Products"),
        ],
      ),
    );
  }
}
