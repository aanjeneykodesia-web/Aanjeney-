import 'package:flutter/material.dart';

class TransporterPage extends StatelessWidget {
  const TransporterPage({super.key});

  @override
  Widget build(BuildContext context) {
    final String shopkeeperName = "Ravi Stores";
    final String mobileNumber = "9876543210";
    final double latitude = 23.2599;
    final double longitude = 77.4126;

    return Scaffold(
      appBar: AppBar(title: const Text("Transporter Dashboard")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _card("Status", "Active"),
            _card("Shopkeeper", shopkeeperName),
            _card("Mobile", mobileNumber),
            _card("Location", "Lat: $latitude, Lng: $longitude"),
          ],
        ),
      ),
    );
  }

  Widget _card(String t, String v) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(t, style: const TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 5),
            Text(v),
          ],
        ),
      ),
    );
  }
}