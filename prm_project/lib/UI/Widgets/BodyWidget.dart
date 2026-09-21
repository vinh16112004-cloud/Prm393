import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:prm_project/UI/Widgets/ProductWidget.dart';
import 'package:prm_project/data/model/Product.dart';

class Bodywidget extends StatelessWidget {
  const Bodywidget({super.key});
  final List<Product> products =[

  new product = new Product(id: "001", name: "Duc", quantity: "2", price: "30000"),
    new product = new Product(id: "002", name: "Thang", quantity: "2", price: "40000"),

  ];
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        for(int i= 0; i < products.length;i++)
        Productwidget(product: products[i])
      ],
    );
  }
}