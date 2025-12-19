import 'package:flutter/material.dart';

class ShopkeeperDashboard extends StatelessWidget {
  const ShopkeeperDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Shopkeeper Dashboard")),
      body: const Center(
        child: Text("Place orders & track transport"),
      ),
    );
  }
}