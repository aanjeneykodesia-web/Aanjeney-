import 'package:flutter/material.dart';
import 'admin_dashboard.dart';

class AdminLogin extends StatelessWidget {
  final passCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Admin Login")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: passCtrl,
              obscureText: true,
              decoration: const InputDecoration(labelText: "Admin Password"),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                if (passCtrl.text == "ADMIN@123") {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => AdminDashboard()),
                  );
                }
              },
              child: const Text("Login"),
            ),
          ],
        ),
      ),
    );
  }
}
