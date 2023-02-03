import 'package:flutter/material.dart';


class Cart extends StatelessWidget {
const Cart({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      
appBar: AppBar(
  backgroundColor: Colors.red,
  title: Text("Cart Page",style: TextStyle(fontFamily:"Ohbaby" ),),),
body: Container(


  child: Center(
    child: Image.asset("assets/image/empty_cart.png"),
  ),
),
    );
  }
}