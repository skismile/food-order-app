import 'dart:convert';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:fruit/components/product_item.dart';
import 'package:fruit/pages/product/product_list_services.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_spinkit/flutter_spinkit.dart';

class ProductList extends StatefulWidget {
  dynamic changeTheme;
  bool isDark;
  String abc = "-----------------------";
  ProductList({required this.changeTheme, required this.isDark});
  @override
  State<ProductList> createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
  bool isGrid = true;
  bool isLoading = false;
  List<dynamic> data = [];
  changeListTheme() {
    setState(() {
      isGrid = isGrid ? false : true;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {
      ApiService();
    });
  }

  ApiService() async {
    setState(() {
      isLoading = true;
    });
    var response = await http.get(Uri.parse(
        'https://api.spoonacular.com/recipes/complexSearch?apiKey=43531fa371cf4cbf9308706b8b850813'));
    var Json = json.decode(response.body);

    if (response.statusCode == 200) {
      setState(() {
        data = Json['results'];
        isLoading = false;
      });
      print(data);
    }

//   var json = JsonDecoder(response.body);
  }

  @override
  Widget build(Object context) {
    // TODO: implement build
    return Scaffold(
      drawer: MyDrawer(),
      floatingActionButton:
          FloatingActionButton(onPressed: () {}, child: Icon(Icons.chat)),
      appBar: AppBar(
          actions: [
            Container(
              padding: EdgeInsets.all(10),
              child: Icon(
                Icons.account_circle,
                size: 40,
              ),
            )
          ],
          backgroundColor: Colors.red,
          title: const Text(
            "Fruit Products ",
            style: TextStyle(fontFamily: "Ohbaby"),
          )),
      body:isLoading? SpinKitRotatingCircle(
        color: Colors.red,
        size: 50.0,
      ):Column(
        children: [

          HeroImage(data),
          ThemeButtons(
              isGrid, widget.isDark, widget.changeTheme, changeListTheme),
          PageTitle(),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(10),
            child: Listing(isGrid, data),
          ))
        ],
      )
    );
  }
}

//! separeted widgets-------------------------------------------------------------------------
