import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:sapp/Home/Categories.dart';
import 'package:sapp/Home/Categories_view.dart';
import 'package:sapp/Models/product.dart';

import 'Item card.dart';
class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[

        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Container(

              width: 360,
              height: 60,

              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(10),)
              ),
              child: Row(
                children: [
                  SizedBox(width: 10,),
                  Icon(Icons.search,color: Colors.grey,size: 30,), SizedBox(width: 10,),
                  Text('Search Products',style: TextStyle(color: Colors.grey,fontSize:18),)
                ],
              ),

            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ViewCategories(),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            children: [
              Text(
                "New Arrivals",
                style: TextStyle(color: Colors.black87,fontWeight: FontWeight.bold,fontSize:23),
              ),
              SizedBox(width: 200,),
              Icon(Icons.arrow_forward_outlined,color: Colors.black87,)
            ],
          ),
        ),

        Expanded(

          child: StaggeredGridView.countBuilder(
              crossAxisCount: 2,

            itemBuilder: (BuildContext context, int index) => ItemCard(product:products[index],),

    staggeredTileBuilder: (int index) =>

    new StaggeredTile.count(1, index.isEven ? 1.5: 1.4),
    itemCount: 6,

    mainAxisSpacing: 2.0,
    crossAxisSpacing: 0.0,
        ),
        )],
    );
  }
}
