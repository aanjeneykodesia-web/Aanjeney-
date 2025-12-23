import 'package:flutter/material.dart';

class TransporterDashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Transporter Dashboard")),
      body: const Center(child: Text("Delivery Assigned")),
    );
  }
}
