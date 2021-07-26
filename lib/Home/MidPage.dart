import 'package:badges/badges.dart';
import 'package:favorite_button/favorite_button.dart';
import 'package:flutter/material.dart';
import 'package:sapp/Home/Cart.dart';
import 'package:sapp/Home/home.dart';
class MyMidPage extends StatefulWidget{
  @override
  _MyMidPageState createState() => _MyMidPageState();
}

class _MyMidPageState extends State<MyMidPage> {
  int _count =01;
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
    final PageController controller = PageController(initialPage: 0);
    final height = MediaQuery.of(context).size.height;
    return Stack(

            fit: StackFit.expand,
            children: <Widget>[


              Container(

                width: double.infinity,
                height: double.infinity,
                child: PageView(

                  controller: controller,
                  scrollDirection: Axis.horizontal,
                  children: [
                    Image(

                      image: AssetImage('asset/images/girl1.jpeg'),
                      fit: BoxFit.cover,),
                    Image(

                      image: AssetImage('asset/images/girl1.jpeg'),fit: BoxFit.cover,),
                    Image(

                      image: AssetImage('asset/images/girl1.jpeg'),fit: BoxFit.cover,),
                  ],
                ),
              ),
              Stack(


                children: [

                  Positioned(
                    top: 400,
                    left: 80,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Container(

                        height:70,
                        width: 238,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(10),
                            )
                        ),
                        child: Row(
                          children: [
                            SizedBox(width: 7,),
                            Container(
                              height: 60,
                              width: 70,
                              decoration: BoxDecoration(
                                  color: Colors.yellow,
                                  borderRadius: BorderRadius.all(Radius.circular(20),
                                  )
                              ),
                              child:ClipRRect(
                                borderRadius: BorderRadius.all(Radius.circular(10)),

                                child: Image(

                                  image: AssetImage('asset/images/girl1.jpeg'),
                                  fit: BoxFit.cover,),
                              ),
                            ),
                            SizedBox(width: 7,),
                            Container(
                              height: 60,
                              width: 70,
                              decoration: BoxDecoration(
                                  color: Colors.yellow,
                                  borderRadius: BorderRadius.all(Radius.circular(30),
                                  )
                              ),
                              child:ClipRRect(
                                borderRadius: BorderRadius.all(Radius.circular(10)),
                                child: Image(

                                  image: AssetImage('asset/images/girl1.jpeg'),
                                  fit: BoxFit.cover,),
                              ),
                            ),
                            SizedBox(width: 7,),
                            Container(
                              height: 60,
                              width: 70,
                              decoration: BoxDecoration(
                                  color: Colors.yellow,
                                  borderRadius: BorderRadius.all(Radius.circular(20),
                                  )
                              ),
                              child:ClipRRect(
                                borderRadius: BorderRadius.all(Radius.circular(10)),
                                child: Image(

                                  image: AssetImage('asset/images/girl1.jpeg'),
                                  fit: BoxFit.cover,),
                              ),
                            ), SizedBox(width: 7,),],
                        ),
                      ),
                    ),
                  ),
                  Positioned(top: 20, left: 5,
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>home()));
                          },
                            child: Icon(Icons.arrow_back)),
                        SizedBox(width: 300,),
                        Icon(Icons.favorite,color: Colors.red[400],),SizedBox(width: 5,),


                        Badge(badgeColor: Colors.red,
                            badgeContent: Text('3'),

                            child: Icon(Icons.shopping_bag_outlined))


                      ],
                    ),
                  ),
                  Positioned( top: 200,
                      left: 380,

                      child: Icon(Icons.arrow_forward_ios_outlined,color: Colors.black54,)),
                  Positioned( top: 200,
                      left: 10,

                      child: Icon(Icons.arrow_back_ios_outlined,color: Colors.black26,)),

                ],
              ),
              Container(
                height: 200,
                margin: EdgeInsets.only(top: height*0.5),
              ),
              Container(
                height: 300,
                margin: EdgeInsets.only(top: height*0.7),

                decoration: BoxDecoration(
                    color:   Colors.white,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30))
                ),



                child: Column(

                  children: <Widget>[
                    SizedBox(height: 20,),


                    Row(

                      children: <Widget>[
                        SizedBox(width: 30,),
                        Text('OFF WHITE-shirt',style: TextStyle(decoration:TextDecoration.none,color: Colors.black87,fontWeight: FontWeight.w600,fontSize:20),),
                        SizedBox(width: 100,),

                        Text("\$${1400}",style: TextStyle(decoration:TextDecoration.none,color: Colors.black87,fontWeight: FontWeight.w600,fontSize:20),),

                      ],
                    ),


                    SizedBox(height: 15,),



                    Row(
                      children: <Widget>[
                        SizedBox(width: 30,),


                        Column(
                          children: [


                            Container(
                              height: 50,
                              width: 80,

                              decoration: BoxDecoration( border: Border.all(color: Colors.grey),

                                  borderRadius: BorderRadius.all(Radius.circular(10))
                              ),
                              child:  Row(
                                children: [
                                  SizedBox(width: 10,),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(height: 5,),

                                      Column(

                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [

                                          Text('Size',style: TextStyle(fontSize: 12,decoration: TextDecoration.none,color: Colors.grey)),
                                          SizedBox(height: 6,),

                                          Text('Large',style: TextStyle(fontSize: 16,decoration: TextDecoration.none,color: Colors.black87,fontWeight: FontWeight.w600),),   ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),


                            SizedBox(height: 10,),


                            Container(
                              height: 50,
                              width: 80,

                              decoration: BoxDecoration( border: Border.all(color: Colors.grey),

                                  borderRadius: BorderRadius.all(Radius.circular(10))
                              ),
                              child: Row(
                                children: [ SizedBox(width: 10,),
                                  Column(

                                    children: [

                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [SizedBox(height: 5,),

                                          Text('Color',style: TextStyle(fontSize: 10,decoration: TextDecoration.none,color: Colors.grey)),

                                          SizedBox(height: 8,),
                                          Container(height: 8,
                                            width: 40,
                                            decoration: BoxDecoration(
                                                color: Colors.brown[300],
                                                borderRadius: BorderRadius.all(Radius.circular(15))
                                            ),
                                          ),  ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],

                        ),



                        SizedBox(width: 20,),



                        Column(
                          children: [

                            Container(
                              height: 50,
                              width: 150,

                              decoration: BoxDecoration( border: Border.all(color: Colors.grey),

                                  borderRadius: BorderRadius.all(Radius.circular(10))
                              ),
                              child: Container(
                                  height: 50,
                                  width: 150,
                                  child: Row(


                                    children: <Widget>[

                                      TextButton(onPressed: (){
                                        _decrementcount();
                                      }, child: Text('-',style: TextStyle(decoration: TextDecoration.none,fontSize: 20),),),

                                      Text('$_count',style: TextStyle(decoration: TextDecoration.none,fontSize: 14),),

                                      TextButton(
                                        onPressed: (){
                                          _incrementcount();
                                        }, child: Text("+",style: TextStyle(decoration: TextDecoration.none,fontSize: 20),),)


                                    ],
                                  )
                              ) ,
                            ),




                            SizedBox(height: 10,),
                            Container(
                              height: 50,
                              width: 150,

                              decoration: BoxDecoration( border: Border.all(color: Colors.grey),

                                  borderRadius: BorderRadius.all(Radius.circular(10))
                              ),
                              child:  Row(
                                children: [
                                  SizedBox(width: 10,),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(height: 5,),

                                      Column(

                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [

                                          Text('Composition',style: TextStyle(fontSize: 12,decoration: TextDecoration.none,color: Colors.grey)),
                                          SizedBox(height: 8,),

                                          Text('Silk Bamboo',style: TextStyle(fontSize: 16,decoration: TextDecoration.none,color: Colors.black87,fontWeight: FontWeight.w600),),   ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),



                          ],
                        ),
                        SizedBox(width: 30,),
                        Container(
                          height: 120,
                          width: 80,

                          decoration: BoxDecoration( border: Border.all(color: Colors.grey),
                            color: Colors.blue,

                            borderRadius: BorderRadius.all(Radius.circular(10)),

                          ),
                          child: Column(
                            children: [
                              SizedBox(height: 30,),
                             Container(
                               height: 40,
                               width: 40,
                              
                               decoration: BoxDecoration(
                                 color: Colors.blue,
                                 border: Border.all(color: Colors.white
                                 ,width: 2),
                                 borderRadius: BorderRadius.all(Radius.circular(5)),

                                 
                               ),
                               child: GestureDetector(
                                 onTap: (){
                                   Navigator.push(context, MaterialPageRoute(builder: (context)=>Cart_item()));
                                 },
                                   child: Icon(Icons.add,color: Colors.white,)),
                             ),
                              SizedBox(height: 4,),
                              Text('Add',style: TextStyle(fontSize: 18,decoration: TextDecoration.none,color: Colors.white)),
                            ],
                          ),
                        ),



                      ],
                    )
                  ],
                ),
              )
            ],
          );








  }
}