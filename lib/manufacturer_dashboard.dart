import 'package:flutter/material.dart';

class ManufacturerDashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Manufacturer Dashboard")),
      body: const Center(
        child: Text("Approve Shopkeeper Orders"),
      ),
    );
  }
}
