import 'package:flutter/material.dart';
import '../models/product_model.dart';

class ShopkeeperDashboard extends StatefulWidget {
  const ShopkeeperDashboard({super.key});

  @override
  State<ShopkeeperDashboard> createState() => _ShopkeeperDashboardState();
}

class _ShopkeeperDashboardState extends State<ShopkeeperDashboard> {
  List<Product> products = [];

  final nameCtrl = TextEditingController();
  final priceCtrl = TextEditingController();
  final qtyCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Shopkeeper Dashboard")),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            TextField(controller: nameCtrl, decoration: const InputDecoration(labelText: "Product Name")),
            TextField(controller: priceCtrl, decoration: const InputDecoration(labelText: "Price")),
            TextField(controller: qtyCtrl, decoration: const InputDecoration(labelText: "Quantity")),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  products.add(Product(
                    name: nameCtrl.text,
                    price: double.parse(priceCtrl.text),
                    quantity: int.parse(qtyCtrl.text),
                  ));
                });
              },
              child: const Text("Add Product"),
            ),
            const Divider(),
            const Text("📍 Location sent to Manufacturer"),
          ],
        ),
      ),
    );
  }
}
