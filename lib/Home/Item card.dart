import 'package:favorite_button/favorite_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sapp/Home/Cart.dart';
import 'package:sapp/Home/MidPage.dart';
import 'package:sapp/Models/product.dart';

class ItemCard extends StatelessWidget {
  final Product product;


  const ItemCard({
    Key? key,
    required this.product,


  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=> MyMidPage()));
      },

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(right: 20.0,left: 20.0,bottom: 20.0),
              child: Container(

                height: 180,
                width: 160,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Stack(
                  children: [
                          Container(

                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(20)),
                              image: DecorationImage(image:AssetImage(product.image) )
                            ),


                          ),
                    Positioned(
                      left: 110,
                      top: 13,
                      child: CircleAvatar(
                        radius: 17,
                        backgroundColor: Colors.white,
                        child: FavoriteButton(
                          iconColor: Colors.grey,
                          iconDisabledColor: Colors.red,
                          iconSize: 30,
                          isFavorite: false,

                          valueChanged: (_isFavorite) {
                            print('Is Favorite : $_isFavorite');
                          },
                        ),
                      ),
                    )
                        ],
                ),
              ),
            ),
          ),



          Padding(
            padding: const EdgeInsets.only(left: 20.0,bottom: 5),
            child: Text(
              // products is out demo list
              product.title, style: TextStyle(fontWeight: FontWeight.bold,fontSize:18 )

            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0,bottom: 5),
            child: Row(
              children: [
                Text(
                  "\$${product.price}",
                  style: TextStyle(fontWeight: FontWeight.bold,fontSize:18 ),
                ),
                SizedBox(width: 6,),
                Text(
                  "\$${product.cross}",
                    style: TextStyle(fontSize:14,decoration: TextDecoration.lineThrough,fontWeight: FontWeight.w300,)
                ),

              ],
            ),

          )

        ],
      ),
    );
  }
}

class favourite extends StatefulWidget{

  bool like;
  favourite( this.like);
  @override
  _favouriteState createState() => _favouriteState();
}

class _favouriteState extends State<favourite> {

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 5,
      right: 10,
      child: Transform.scale(
        scale: 0.7,
        child: FloatingActionButton(
          backgroundColor: Colors.white,
          onPressed: (){
            setState(() {
              widget.like = !widget.like;
            });
          },
          child: widget.like == true
              ? Icon(
            Icons.favorite,
            color: Colors.red[400],
            size: 30,
          )
              : Icon(
            Icons.favorite_border,
            size: 30,
            color: Colors.black45,
          ),
        ),
      ),
    );


  }
}
