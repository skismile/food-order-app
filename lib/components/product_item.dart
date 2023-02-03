import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProdutItem extends StatelessWidget {
  // ignore: non_constant_identifier_names
  final String image_url;
  final String title;
  final String description;
  final double price;
  final Map data;
  

  ProdutItem(
      {
      // ignore: non_constant_identifier_names
      required this.image_url,
      required this.title,
      required this.description,
      required this.price,
      required this.data
      });

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      padding: EdgeInsets.all(10),

      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.grey[100],
          boxShadow: [BoxShadow(blurRadius: 10.0)]),

      // color:  Colors.blue,
      child: Column(
        children: [
          ProductImage(image_url),
          ProductTitle(title),
          ProductDescription(description),
          Row(
            children: [
              Expanded(
                child: Text(
                  "\$ ${price.toStringAsFixed(0)}",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              Expanded(
                child: ElevatedButton(
                  onPressed: () {
                    // Navigator.push(context, MaterialPageRoute(
                    //   builder: (context) {
                    //     return ProductDetails();
                    //   },
                    // ));
                    Get.toNamed("/productDetails",
                    // arguments: [p.productList[index]]
                    arguments: [data]
                    );
                  },
                  style: ElevatedButton.styleFrom(
                      shape: const StadiumBorder(),
                      backgroundColor: Colors.red),
                  child: const Icon(Icons.add),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

Widget ProductImage(image) {
  return Container(
    width: double.infinity,
    height: 100,

    // color: Colors.green,
    child: Image.network(image),
  );
}

Widget ProductTitle(title) {
  return Text(
    title,
    maxLines: 1,
    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
  );
}

Widget ProductDescription(description) {
  return Text(
    description,
    maxLines: 1,
    style: TextStyle(
        color: Colors.black.withOpacity(0.3),
        fontWeight: FontWeight.bold,
        fontSize: 10),
  );
}
