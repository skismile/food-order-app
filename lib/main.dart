import 'package:flutter/material.dart';
import 'package:fruit/pages/cart/cart.dart';
import 'package:fruit/pages/login/login.dart';
import 'package:fruit/pages/product/product_lis.dart';
import 'package:fruit/components/splash_screen.dart';


import 'package:fruit/pages/productdetails/product_details.dart';
import 'package:fruit/pages/signup/signup.dart';
import 'package:get/get.dart';

void main() {
  runApp(FoodApp());
}

class FoodApp extends StatefulWidget {
  @override
  State<FoodApp> createState() => _FoodAppState();
}

class _FoodAppState extends State<FoodApp> {
  bool dark = false;

  changeTheme() {
    setState(() {
      dark = dark ? false : true;
    });
    // print(dark);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: dark ? ThemeData.dark() : ThemeData.light(),

      home: SplashScreen(isDark: dark, changeTheme: changeTheme),
      // ProductList(changeTheme: changeTheme, isDark: dark),
      // 
      getPages: [
        // GetPage(name: "/", page: () => Home(), ),
        GetPage(
          name: "/products",
          page: () => ProductList(changeTheme: changeTheme, isDark: false),
        ),
        GetPage(
          name: "/productDetails",
          page: () =>  ProductDetails(),
        ),
        GetPage(
            name: "/cart", page: () => Cart(), ),
        //     GetPage(
        //     name: "/singleproduct",),
        //      GetPage(
        //     name: "/cart", page: () => CartPage(), ),
        GetPage(
        name: "/login", page: () => Login(),),
        GetPage(
        name: "/signup", page: () => Signup(),)
      ],
      // ProductList(changeTheme: changeTheme,isDark: dark,),
    );
  }
}
