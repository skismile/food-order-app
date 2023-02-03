import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:fruit/components/my_drawer.dart';
import 'package:get/get.dart';
// import 'package:getx_cust/screens/Login/login_controller.dart';
import "package:http/http.dart" as http;

class Signup extends StatelessWidget {
  var email = TextEditingController();
  var password = TextEditingController();
  // var loginController = Get.find<LoginController>();
  // final status = Get.put(LoginController());
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
     
      appBar: AppBar(
        
        backgroundColor: Colors.red,
        title: Text("Signup Page",style: TextStyle(fontFamily: "Ohbaby"),)),
      body: Card(
        child: SingleChildScrollView(
            child: Container(
          padding: EdgeInsets.all(30),
          width: double.infinity,
          child: Column(

            children: [
              Text("Create Your Account",style: TextStyle(color: Colors.red,fontSize: 30,fontFamily: "Ohbaby"),),
              TextField(
                controller: email,
                decoration: InputDecoration(labelText: "Email"),
              ),
              TextField(
                controller: password,
                decoration: InputDecoration(labelText: "Password"),
              ),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.red)
                ),
                  onPressed: () {
                   
                  },
                  child: Text("Create Account",style: TextStyle(fontFamily: 'Ohbaby'),))
            ],
          ),
        )),
      ),
    );
  }
}

// ignore: non_constant_identifier_names
