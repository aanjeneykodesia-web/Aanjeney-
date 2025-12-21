import 'package:flutter/material.dart';
import 'package:local_auth/local_auth.dart';
import 'admin_dashboard.dart';

class AdminLogin extends StatelessWidget {
  final auth = LocalAuthentication();

  Future<void> authenticate(BuildContext context) async {
    bool success = await auth.authenticate(
      localizedReason: 'Admin authentication required',
      options: AuthenticationOptions(biometricOnly: true),
    );

    if (success) {
      Navigator.push(
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
          onPressed: () => authenticate(context),
          child: const Text("Login with Face/Fingerprint"),
        ),
      ),
    );
  }
}
