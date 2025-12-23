import 'package:flutter/material.dart';
import 'shopkeeper_dashboard.dart';

class ShopkeeperLogin extends StatelessWidget {
  final TextEditingController name = TextEditingController();
  final TextEditingController phone = TextEditingController();
  final TextEditingController location = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Shopkeeper Login")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(controller: name, decoration: const InputDecoration(labelText: "Shop Name")),
            TextField(controller: phone, decoration: const InputDecoration(labelText: "Mobile Number")),
            TextField(controller: location, decoration: const InputDecoration(labelText: "Shop Location")),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) => ShopkeeperDashboard()));
              },
              child: const Text("Login"),
            )
          ],
        ),
      ),
    );
  }
}
``
