import 'package:flutter/material.dart';
import 'product_model.dart';

class AdminDashboard extends StatefulWidget {
  @override
  State<AdminDashboard> createState() => _AdminDashboardState();
}

class _AdminDashboardState extends State<AdminDashboard> {
  final List<Product> products = [];
  final nameCtrl = TextEditingController();
  final qtyCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Admin Dashboard")),
      body: Column(
        children: [
          TextField(controller: nameCtrl, decoration: const InputDecoration(labelText: "Product Name")),
          TextField(controller: qtyCtrl, decoration: const InputDecoration(labelText: "Quantity")),
          ElevatedButton(
            onPressed: () {
              setState(() {
                products.add(Product(nameCtrl.text, int.parse(qtyCtrl.text)));
              });
            },
            child: const Text("Add Product"),
          ),
          Expanded(
            child: ListView(
              children: products.map((p) => ListTile(
                title: Text(p.name),
                trailing: Text(p.quantity.toString()),
              )).toList(),
            ),
          )
        ],
      ),
    );
  }
}
