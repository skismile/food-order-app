import 'package:flutter/material.dart';

import 'package:fruit/pages/product/product_lis.dart';

class SplashScreen extends StatefulWidget {
  dynamic changeTheme;
  bool isDark;

  SplashScreen({Key? key, required this.isDark, required this.changeTheme})
      : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Future.delayed(
        Duration(
          seconds: 2,
        ), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) {
          return ProductList(
              changeTheme: widget.changeTheme, isDark: widget.isDark);
        },
      ));
      // Navigator.push(context,
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset("assets/image/logo.png"),
        Text(
          'Bluehorse Fruit App',
          style: TextStyle(color: Colors.red, fontSize: 30),
        ),
      ],
    )));
  }
}
