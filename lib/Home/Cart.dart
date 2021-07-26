import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sapp/Home/MidPage.dart';
import 'package:sapp/Models/product.dart';

import 'home.dart';


class Cart_item extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(

          appBar: AppBar(
            title: Center(child: Text('MyCart(3)',style: TextStyle(color: Colors.black54),)),
            elevation: 0,
            backgroundColor: Colors.transparent,
            leading: FlatButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>MyMidPage()));
            },
                child: Icon(Icons.arrow_back,color: Colors.black54,)),

          ),
          body: Column(
            children: [
              MyLastPage(),
              SizedBox(height: 2,),

              MyLastPage(),SizedBox(height: 2,),
             MyLastPage(),
              SizedBox(height: 20,),
              Container(

                height: 60,
                width: 370,
                decoration: BoxDecoration(
                  color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    border: Border.all(color: Colors.white)),
                child: Row(
                  children: [
                    SizedBox(width: 10,),
                    Text('Promo Code',style:  TextStyle(fontSize: 17,color: Colors.grey),),
                    SizedBox(width: 170,),
                    ElevatedButton(
                      style: ButtonStyle(
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                  side: BorderSide(color: Colors.blue)
                              )
                          )
                      ),
                        onPressed: (){}, child: Text('Apply'))
                  ],
                ),



              ),
              SizedBox(height: 20,),
              Row(
                children: [
                  SizedBox(width: 10,),
                  Text('Subtotal',style:  TextStyle(fontSize: 20,color: Colors.grey),),
                  SizedBox(width: 250,),
                  Text('₹',),
                  Text("\$${1600}",style:  TextStyle(fontSize: 20,color: Colors.grey),)
                ],

              ),
              SizedBox(height: 15,),
              Row(
                children: [
                  SizedBox(width: 10,),
                  Text('Shipping',style:  TextStyle(fontSize: 20,color: Colors.grey),),
                  SizedBox(width: 250,),
                  Text('₹',),
                  Text("\$${100}",style:  TextStyle(fontSize: 20,color: Colors.grey),)
                ],

              ),SizedBox(height: 10,),
              DottedLine(),
              SizedBox(height: 10,),
              Row(
                children: [
                  SizedBox(width: 10,),
                  Text('Bag Total:',style:  TextStyle(fontSize: 20,color: Colors.grey),),
                  SizedBox(width: 230,),
                  Text('₹',),
                  Text("\$${1700}",style:  TextStyle(fontSize: 20,color: Colors.grey),)
                ],

              ),SizedBox(height: 10),
              MaterialButton(
                disabledColor: Colors.teal,
                height: 50,
                minWidth: 300,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                color: Theme.of(context).primaryColor,
                textColor: Colors.white,
                child: new Text("Proceed to Checkout"),
                onPressed: () => {
                  Navigator.push(context, MaterialPageRoute(builder: (context) =>home()))
                },
                splashColor: Colors.redAccent,
              )
            ],
          )

        )
      ],

    );
  }

}




class MyLastPage extends StatefulWidget{

  @override
  _MyLastPageState createState() => _MyLastPageState();
}

class _MyLastPageState extends State<MyLastPage> {
  int _count =1;
  String _price = "";

  Price(varPrice){
    setState(() {
      _price = varPrice;
    });
  }
  void _incrementcount() {
    setState(() {
      _count++;
    });

  }
  void _decrementcount(){
    setState(() {
      _count--;
    });
  }
  @override
  Widget build(BuildContext context) {
    var product;
    return Column(
        children: <Widget>[
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.only(left: 10,right: 10),
            child: Container(
              height: 100,
              width: 400,
              color: Colors.transparent,
              child: Row(
                children: [
                  Container(
                    height: 100,
                    width: 90,

                    child: Image(image: AssetImage('asset/images/top1.jpg'),
                   fit:BoxFit.scaleDown,height: 10,width: 10,),

                    decoration: BoxDecoration(color: Colors.white, border: Border.all(color: Colors.white),

                      borderRadius: BorderRadius.all(Radius.circular(20)),

                    ),

                  ),
                  SizedBox(width: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: Column( mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            Text('Delta - Tees',style: TextStyle(fontSize: 20,color: Colors.black),),
                            SizedBox(height: 8,),
                            Text('Size-ExtraLarge(M)',style: TextStyle(fontSize: 15,color: Colors.grey),),
                            SizedBox(height: 8,),
                            Row(
                              children: [
                                Text("\$${500}",style: TextStyle(fontSize: 20,color: Colors.black),),
                                SizedBox(width: 7,),
                                Text("\$${900}",style: TextStyle(fontSize: 15,decoration: TextDecoration.lineThrough,color: Colors.grey),)
                              ],
                            ),

                          ],
                        ),
                      ),
                      SizedBox(width: 18,),


                      Padding(
                        padding: EdgeInsets.only(top: 4),
                        child: Container(
                          height: 100,
                          width: 140,
                          color: Colors.transparent,
                          child: Column(
                            children: [

                              Row(
                                children: [
                                  SizedBox(width: 100,),
                                  Icon(Icons.close,size: 18,),
                                ],
                              ),
                              SizedBox(height: 20,),
                              Row(

                                children: [
                                  TextButton(onPressed: (){
                                    _incrementcount();
                                  }, child: CircleAvatar(radius: 15,
                                      child: Text('-',style: TextStyle(decoration: TextDecoration.none,fontSize: 20),)),),

                                  Text('$_count',style: TextStyle(decoration: TextDecoration.none,fontSize: 20),),

                                  TextButton(
                                    onPressed: (){
                                      _decrementcount();
                                    }, child: CircleAvatar(radius: 15,child: Text("+",style: TextStyle(decoration: TextDecoration.none,fontSize: 20),)),)
                                ],
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),



        ],
      );



  }
}

