import 'package:flutter/material.dart';

import 'Categories.dart';
class ViewCategories extends StatefulWidget {
  const ViewCategories({Key? key}) : super(key: key);

  @override
  _ViewCategoriesState createState() => _ViewCategoriesState();
}

class _ViewCategoriesState extends State<ViewCategories> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 100,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            Categories("asset/images/shirt.jpg", 'Clothes'),
            Categories("asset/images/girltop.png", 'Top'),
            Categories("asset/images/shoe.png", 'Shoes'),
            Categories("asset/images/bag.png", 'Bags'),
            Categories("asset/images/watch.jpeg", 'Watch'),

          ],
        ),
      ),
    );
  }
}