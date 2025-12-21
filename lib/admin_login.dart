import 'package:flutter/material.dart';
import 'package:local_auth/local_auth.dart';
import 'admin_dashboard.dart';

class AdminLogin extends StatelessWidget {
  final auth = LocalAuthentication();

  Future<void> login(BuildContext context) async {
    bool ok = await auth.authenticate(
      localizedReason: 'Admin authentication required',
      options: const AuthenticationOptions(biometricOnly: true),
    );
    if (ok) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => AdminDashboard()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Admin Login")),
      body: Center(
        child: ElevatedButton(
          onPressed: () => login(context),
          child: const Text("Login with Face"),
        ),
      ),
    );
  }
}
