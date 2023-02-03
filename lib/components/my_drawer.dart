import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Drawer(
      child: Column(
        children: [
           Container(
          width: double.infinity,
          color: Colors.red,
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 30, bottom: 10),
                child: CircleAvatar(
                  radius: 48, // Image radius
                  backgroundImage: NetworkImage(
                      'https://avatars.githubusercontent.com/u/101392872?v=4'),
                ),
              ),
              Text(
                "Sk Ismile",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ],
          ),
        ),
          Card(
            child: ListTile(
              title: Text("Product"),
              leading: Icon(Icons.install_mobile_rounded),
              onTap: () => {
                Get.back(),

                Get.toNamed("/products")
              },
            ),
          ),
          Card(
            child: ListTile(
              title: Text("Cart"),
              leading: Icon(Icons.production_quantity_limits),
              onTap: () => {Get.back(), Get.toNamed("/cart")},
            ),
          ),
          Card(
            child: ListTile(
              title: Text("Login"),
              leading: Icon(Icons.login),
              onTap: () => {Get.back(), Get.toNamed("/login")},
            ),
          ),
          
          Card(
            child: ListTile(
              title: Text("Sign Up"),
              leading: Icon(Icons.create),
              onTap: () => {
                Get.back(),
                 Get.toNamed("/signup")
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
        ],
      ),
    );
  }
}
