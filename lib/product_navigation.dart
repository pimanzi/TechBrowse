import 'package:flutter/material.dart';
import 'package:techbrowse/product_card.dart';

class ProductNavigation extends StatelessWidget {
  ProductNavigation({super.key});

  final List<Map<String, dynamic>> productInfo = [
    {
      "title": "Pixel 1",
      "title2": "Pixel",
      "description": "Pixel is the most featureful phone ever",
      "price": 800,
      "fillStar": false,
      "color": Color(0xFF3C64DC),
    },
    {
      "title": "Laptop",
      "title2": "Laptop",
      "description": "Laptop is the most productive development tool",
      "price": 2000,
      "fillStar": false,
      "color": Colors.green,
    },
    {
      "title": "Tablet",
      "title2": "Tablet",
      "description": "Tablet is the most useful device ever for meetings",
      "price": 1500,
      "fillStar": true,
      "color": Color(0xFFcfc534),
    },
    {
      "title": "Pendrive",
      "title2": "Pendrive",
      "description": "Pendrive is a compact and portable storage device",
      "price": 100,
      "fillStar": false,
      "color": Color(0xFFc45c3f),
    },
    {
      "title": "Floppy Drive",
      "title2": "Floppy Drive",
      "description": "Old but still gold storage device",
      "price": 50,
      "fillStar": false,
      "color": Color(0xFF3cbcac),
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text(
          "Product Navigation",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
        itemCount: productInfo.length,
        itemBuilder: (context, index) {
          final product = productInfo[index];
          return Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 6),
            child: ProductCard(
                title: product["title"],
                title2: product["title2"],
                description: product["description"],
                price: product["price"],
                color: product["color"],
                fillStar: product["fillStar"]),
          );
        },
      ),
    );
  }
}

