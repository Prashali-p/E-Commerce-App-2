import 'package:flutter/material.dart';

class Product {
  final String image, title;
  final int price, size, id,cross;
  final Color color;
  Product({
    required this.id,
    required this.image,
    required this.title,
    required this.price,

    required this.size,
    required this.color,
    required this.cross,
  });
}

List<Product> products = [
  Product(
      id: 1,
      title: "PITTI Block - Shirt",
      price: 300,
      cross: 500,
      size: 12,

      image: "asset/images/girl1.jpeg",
      color: Color(0xFF3D82AE)),
  Product(
      id: 2,
      title: "BEPA Culture - Shirt",
      price: 400,
      size: 8,
      cross: 500,

      image: "asset/images/boy2.jpeg",
      color: Color(0xFFD3A984)),
  Product(
      id: 3,
      title: "Hang Top",
      price: 234,
      size: 10,
      cross: 500,

      image: "asset/images/boy2.jpeg",
      color: Color(0xFF989493)),
  Product(
      id: 4,
      title: "Old Fashion",
      price: 234,
      size: 11,
      cross: 500,

      image: "asset/images/boy2.jpeg",
      color: Color(0xFFE6B398)),
  Product(
      id: 5,
      title: "Office Code",
      price: 234,
      cross: 500,
      size: 12,

      image: "assets/images/bag_5.png",
      color: Color(0xFFFB7883)),
  Product(
    id: 6,
    cross: 500,
    title: "Office Code",
    price: 234,
    size: 12,

    image: "assets/images/bag_6.png",
    color: Color(0xFFAEAEAE),
  ),
];

