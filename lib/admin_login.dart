import 'package:flutter/material.dart';
import 'admin_dashboard.dart';

class AdminLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Admin Login")),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (_) => AdminDashboard()));
          },
          child: const Text("Login (Face Auth Placeholder)"),
        ),
      ),
    );
  }
}
