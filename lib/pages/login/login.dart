import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:getx_cust/screens/Login/login_controller.dart';
import "package:http/http.dart" as http;

class Login extends StatelessWidget {
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
        title: Text("Login Page",style: TextStyle(fontFamily: "Ohbaby"),)),
      body: Card(
        child: SingleChildScrollView(
            child: Container(
          padding: EdgeInsets.all(30),
          width: double.infinity,
          child: Column(

            children: [
              Text("Login Page",style: TextStyle(color: Colors.red,fontSize: 30,fontFamily: "Ohbaby"),),
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
                    // LoginHandler(email.text, password.text, status.isAuth);
                  },
                  child: Text("Login",style: TextStyle(fontFamily: 'Ohbaby'),))
            ],
          ),
        )),
      ),
    );
  }
}

// ignore: non_constant_identifier_names
LoginHandler(String email, String password, RxBool status) async {
  var url = Uri.parse("https://reqres.in/api/login");
  var user = await http.post(url,
      body: {"email": email, "password": password},
      headers: {"Contained-Type": "application/json"});

  var json = jsonDecode(user.body);
  // print(json);
  // print("${loginController}");
  print("token is ${status}");
  if (json["token"] != null) {
    print("--------------------------------------");
    status = true as RxBool;
    Get.snackbar("Validation Complete", "User Login Successfull");
    // Get.toNamed("/");
    // print("token is ${status}");
  }
}