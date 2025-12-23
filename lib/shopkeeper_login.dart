import 'package:flutter/material.dart';
import 'shopkeeper_dashboard.dart';

class ShopkeeperLogin extends StatelessWidget {
  final phoneCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Shopkeeper Login")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: phoneCtrl,
              keyboardType: TextInputType.phone,
              decoration: const InputDecoration(labelText: "Mobile Number"),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => ShopkeeperDashboard()),
                );
              },
              child: const Text("Login (OTP simulated)"),
            ),
          ],
        ),
      ),
    );
  }
}
