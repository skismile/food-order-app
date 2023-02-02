
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:fruit/components/product_item.dart';

Widget PageTitle() {
  return Container(
    padding: EdgeInsets.only(left: 30),
    width: double.infinity,
    child: const Text(
      "Available Fruites",
      textAlign: TextAlign.start,
      style: TextStyle(fontSize: 30, fontFamily: "Ohbaby"),
    ),
  );
}

// ignore: non_constant_identifier_names
Widget ThemeButtons(isGrid, isDark, changeTheme, changeListTheme) {
  return Container(
    width: double.infinity,
    padding: EdgeInsets.all(10),
    child: Row(
      children: [
        ElevatedButton(
            style: ElevatedButton.styleFrom(
                shape: const StadiumBorder(), backgroundColor: Colors.red[200]),
            onPressed: () {
              // widget.abc;
              // print(widget.abc);
              print(isGrid);
              changeListTheme();
            },
            child: Text(
              isGrid ? "List Mode" : "Grid Mode",
            )),
        ElevatedButton(
            style: ElevatedButton.styleFrom(
                shape: const StadiumBorder(),
                backgroundColor: isDark ? Colors.white : Colors.black),
            onPressed: () {
              // widget.abc;
              print(isDark);
              changeTheme();
            },
            child: Text(
              isDark ? "Light Mode" : "Dark Mode",
              style: TextStyle(),
            )),
      ],
    ),
  );
}

Widget HeroImage(data) {
  return Container(
    margin: EdgeInsets.only(top: 20, bottom: 10),
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
              image: AssetImage("assets/image/f3.png"),
              fit: BoxFit.fill,
            ),
          ),
        );
      },
    ),
  );
}

Widget Listing(isGrid, data) {
  return isGrid
      ? GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, mainAxisExtent: 230),
          itemCount: data.length,
          itemBuilder: (context, index) {
            return ProdutItem(
                image_url: data[index]["image"],
                title: data[index]["title"],
                description:
                    "Broadly there are two categories of fruits: fleshy fruits and dry fruits",
                price: random());
          },
        )
      : ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return ProdutItem(
                image_url: data[index]["image"],
                title: data[index]["title"],
                description:
                    "Broadly there are two categories of fruits: fleshy fruits and dry fruits",
                price: random());
          });
}

double random() {
  Random random = Random();
  double randomNumber = (random.nextInt(9) + 1) * 100;
  print(randomNumber);
  return randomNumber;
}

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Drawer(
      child: Column(
        children: [
          Card(
            child: ListTile(
              title: Text("Product"),
              leading: Icon(Icons.install_mobile_rounded),
              onTap: () => {
                // Get.back(),
                // Get.toNamed("/product")
              },
            ),
          ),
          Card(
            child: ListTile(
              title: Text("Cart"),
              leading: Icon(Icons.production_quantity_limits),
              onTap: () => {
                // Get.back(),
                // Get.toNamed("/cart")
              },
            ),
          ),
          Card(
            child: ListTile(
              title: Text("Login"),
              leading: Icon(Icons.login),
              onTap: () => {
                // Get.back(),
                // Get.toNamed("/login")
              },
            ),
          ),
          Card(
            child: ListTile(
              title: Text("Logout"),
              leading: Icon(Icons.logout),
              onTap: () => {
                // Get.back(),
                // Get.toNamed("/logout")
              },
            ),
          ),
          Card(
            child: ListTile(
              title: Text("Sign Up"),
              leading: Icon(Icons.create),
              onTap: () => {
                // Get.back(),
                // Get.toNamed("/signup")
              },
            ),
          ),
        ],
      ),
    );
  }
}
