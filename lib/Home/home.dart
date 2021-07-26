import 'package:badges/badges.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:sapp/Models/product.dart';

import 'body.dart';
class home extends StatelessWidget{



  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 50,
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: <Widget>[

          IconButton(onPressed: (){},

              icon: Badge(
                  badgeColor: Colors.red,
                  badgeContent: Text('3'),
                  child: Icon(Icons.local_mall_outlined,color: Colors.black,))),
        ],
        leading:IconButton(icon: Icon(Icons.sort_rounded),color: Colors.black, onPressed: () {  },),
        title: Center(child: Text('ISSACS',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),)),

      ),
        bottomNavigationBar: CurvedNavigationBar(
          buttonBackgroundColor: Colors.blue,

          backgroundColor: Colors.white12,
          color: Colors.white,
          items: [

            Icon(Icons.home,size: 30,color: Colors.blue,),
            Icon(Icons.dashboard_outlined,size: 30, color: Colors.black38,),
            Icon(Icons.add, size: 30,color: Colors.white,),
            Icon(Icons.watch_later_outlined,size: 30, color: Colors.black38,),
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.person_outline_rounded,
            color: Colors.black38,
            size: 35.0,
          ),),

          ],
        ),

      body:Body()
    );
  }

}