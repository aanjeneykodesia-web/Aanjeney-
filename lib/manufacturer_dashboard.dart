import 'package:flutter/material.dart';

class ManufacturerDashboard extends StatelessWidget {
  const ManufacturerDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Manufacturer Dashboard")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text("Shopkeeper Name: Demo Shop"),
            Text("Mobile: 9XXXXXXXXX"),
            SizedBox(height: 10),
            Text("Approve & send manufacturing location"),
          ],
        ),
      ),
    );
  }
}
