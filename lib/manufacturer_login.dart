import 'package:flutter/material.dart';
import 'manufacturer_dashboard.dart';

class ManufacturerLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Manufacturer Login")),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (_) => ManufacturerDashboard()));
          },
          child: const Text("Login (OTP Placeholder)"),
        ),
      ),
    );
  }
}
