import 'package:flutter/material.dart';

class TransporterDashboard extends StatelessWidget {
  const TransporterDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Transporter Dashboard")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text("Pickup: Shop Location"),
            Text("Drop: Manufacturer Location"),
            SizedBox(height: 10),
            Text("Delivery Status: Active"),
          ],
        ),
      ),
    );
  }
}
