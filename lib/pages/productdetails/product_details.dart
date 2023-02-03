import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductDetails extends StatelessWidget {
  var data = Get.arguments;

  ProductDetails({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    print(data);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("Product Details"),
      ),
      body: ListView(
        children: [
          HeroProductDetailsImage(data[0]['image']),
          ProductDetailsBody(data)
        ],
      ),
    );
  }
}

Widget ProductDetailsBody(data) {
  return Container(
    padding: EdgeInsets.all(10),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "${data[0]["title"]}",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          "Price   ₹${random()}",
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 20, color: Colors.green),
        ),
SizedBox(
          height: 10,
        ),
        Text("However, product and food demonstrators do much more than just provide snacks to hungry shoppers. They're responsible for generating interest in and sales of a variety of products, and work in many venues other than grocery stores. Product and food demonstrators conduct their sales and promote to large audiences.",style: TextStyle(color: Colors.black.withOpacity(0.5)),),
      
      SizedBox(
          height: 10,
        ),
        Row(
          children: [
            ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.red),
                ),
                onPressed: () {
                  Get.snackbar("Add to cart", "Item Added",
                      backgroundColor: Colors.green);
                },
                child: Text("Add To Cart")),
            SizedBox(
              width: 10,
            ),
            ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.red),
                ),
                onPressed: () {
                  Get.snackbar("Buy item", "Thanks for Purchasing",
                      backgroundColor: Colors.green);
                },
                child: Text("Buy")),
          ],
        ),
      ],
    ),
  );
}

// ------------------------------------

double random() {
  Random random = Random();
  double randomNumber = (random.nextInt(9) + 1) * 100;
  print(randomNumber);
  return randomNumber;
}

Widget HeroProductDetailsImage(data) {
  return Container(
    margin: EdgeInsets.only(top: 20, bottom: 10),
    padding: EdgeInsets.all(10),
    width: double.infinity,
    height: 200,
    child: ListView.builder(
      itemCount: data.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return Container(
          margin: EdgeInsets.all(10),
          width: 400,
          height: 200,
          foregroundDecoration: BoxDecoration(
            image: DecorationImage(
              // image: NetworkImage(data[index]["image"]),
              image: NetworkImage("${data}"),
              fit: BoxFit.fill,
            ),
          ),
        );
      },
    ),
  );
}
