import 'package:flutter/material.dart';

class ShopkeeperDashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Shopkeeper Dashboard")),
      body: const Center(child: Text("Place Order Here")),
    );
  }
}
