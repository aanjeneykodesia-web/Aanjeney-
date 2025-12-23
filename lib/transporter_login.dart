import 'package:flutter/material.dart';
import 'transporter_dashboard.dart';

class TransporterLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Transporter Login")),
      body: Center(
        child: ElevatedButton(
          child: const Text("Login"),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => TransporterDashboard()),
            );
          },
        ),
      ),
    );
  }
}
