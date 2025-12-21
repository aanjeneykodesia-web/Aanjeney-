import 'package:flutter/material.dart';
import 'shopkeeper_login.dart';
import 'manufacturer_login.dart';
import 'transporter_login.dart';
import 'admin_login.dart';

class LoginSelect extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Login Selection")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            btn(context, "Shopkeeper", ShopkeeperLogin()),
            btn(context, "Manufacturer", ManufacturerLogin()),
            btn(context, "Transporter", TransporterLogin()),
            btn(context, "Admin", AdminLogin()),
          ],
        ),
      ),
    );
  }

  Widget btn(BuildContext c, String t, Widget p) {
    return Padding(
      padding: const EdgeInsets.all(6),
      child: ElevatedButton(
        onPressed: () => Navigator.push(c, MaterialPageRoute(builder: (_) => p)),
        child: Text(t),
      ),
    );
  }
}
