import 'package:flutter/material.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var product_list = [
    {
      "name": "Blazer",
      "picture": "images/products/blazer1.jpeg",
      "old_price": 120,
      "price": 85
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}

class Single_Prod extends StatelessWidget {
  final product_name;
  final product_picture;
  final product_old_price;
  final prod_price;

  Single_Prod ({
    this.product_name,
    this.product_picture,
    this.product_old_price,
    this.prod_price
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}