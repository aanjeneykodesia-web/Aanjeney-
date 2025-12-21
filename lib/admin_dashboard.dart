import 'package:flutter/material.dart';
import 'product_model.dart';

class AdminDashboard extends StatefulWidget {
  @override
  State<AdminDashboard> createState() => _AdminDashboardState();
}

class _AdminDashboardState extends State<AdminDashboard> {
  List<Product> products = [];
  final nameCtrl = TextEditingController();
  final qtyCtrl = TextEditingController();

  void addProduct() {
    setState(() {
      products.add(Product(nameCtrl.text, int.parse(qtyCtrl.text)));
    });
    nameCtrl.clear();
    qtyCtrl.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Admin Dashboard")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const Text("Add Product"),
            TextField(controller: nameCtrl, decoration: const InputDecoration(labelText: "Name")),
            TextField(
              controller: qtyCtrl,
              decoration: const InputDecoration(labelText: "Quantity"),
              keyboardType: TextInputType.number,
            ),
            ElevatedButton(onPressed: addProduct, child: const Text("Add")),
            const Divider(),
            Expanded(
              child: ListView.builder(
                itemCount: products.length,
                itemBuilder: (_, i) => ListTile(
                  title: Text(products[i].name),
                  trailing: Text("Qty: ${products[i].quantity}"),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
