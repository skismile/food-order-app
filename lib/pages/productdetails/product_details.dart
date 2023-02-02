import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductDetails extends StatelessWidget {
const ProductDetails({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("Product Details"),
      ),
      body: Text("123")
      
//       ListView(
//         children: [
//           Image.network(
//             "${data[0].url}",
//             width: 500,
//           ),
//           Text(
//             "${data[0].title}",
//             style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
//           ),
//           Text(
//             "Price   ₹${data[0].price}",
//             style: TextStyle(
//                 fontWeight: FontWeight.bold, fontSize: 20, color: Colors.green),
//           ),
//           Text(
//             "Mrp  ₹${data[0].fprice}",
//             style: TextStyle(
//                 fontWeight: FontWeight.bold,
//                 fontSize: 20,
//                 color: Colors.red,
//                 decoration: TextDecoration.lineThrough),
//           ),
//           Text(
//             "Discount  ${data[0].off}",
//             style: TextStyle(fontSize: 15, color: Colors.green),
//           ),
//           Text(
//             "${data[0].mkt}",
//             style: TextStyle(color: Colors.grey, fontSize: 25),
//           ),
//           Row(
//             children: [
//               ElevatedButton(
//                   onPressed: () {
//                     Get.snackbar("Add to cart", "Item Added");
//                   },
//                   child: Text("Add To Cart")),
//               ElevatedButton(onPressed: () {
//  Get.snackbar("Buy item", "Thanks for Purchasing",backgroundColor: Colors.green);

//               }, child: Text("Buy")),
//             ],
//           )
//         ],
//       ),
    );
  }
}