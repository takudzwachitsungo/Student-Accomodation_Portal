import 'package:flutter/material.dart';

class Product {
  String image;
  String name;
  String description;
  double price;
  IconData? icon;

  Product(this.image, this.name, this.description, this.price, [this.icon]);
}
