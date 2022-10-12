import 'dart:ffi';

import 'package:email_validator/email_validator.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:groceryapp/firebase/auth.dart';
import 'package:groceryapp/screen/declare.dart';
import 'package:groceryapp/screen/widget.dart';

class Forgot extends StatelessWidget {
  void dispose() {
    emailController.dispose();
  }

  Demo d1 = Demo();
  final formkey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Stack(children: [
      Align(
          alignment: Alignment.center,
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 50),
                Image.asset(
                  d1.loginpage_logo,
                  width: 300,
                ),
                SizedBox(height: 30),
                Form(
                  key: formkey,
                  child: myTextFormField(
                    mycontroller: emailController,
                    hintText: "Enter Email",
                    obscureText: false,
                    keyboardType: TextInputType.text,
                    myIcon: Icon(
                      Icons.person,
                      color: d1.icon_color,
                      size: d1.icon_size,
                    ),
                    // autovalidateMode: AutovalidateMode.disabled,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Enter email";
                      } else if (!EmailValidator.validate(value)) {
                        return "Enter valid email";
                      } else {
                        return null;
                      }
                    },
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                    width: MediaQuery.of(context).size.width - 60,
                    height: 40,
                    child: ElevatedButton(
                      onPressed: () {
                        onForgot();
                      },
                      child: Text("Reset Password"),
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.amber),
                          textStyle: MaterialStateProperty.all(TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold)),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50)))),
                    )),
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text("SIGN-IN",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            )),
                        SizedBox(
                          width: 20,
                        ),
                        FloatingActionButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Icon(Icons.forward_rounded, size: 40),
                          backgroundColor: Colors.amber,
                        )
                      ],
                    ),
                  ),
                ),
              ])),
      Positioned(
          top: 100,
          right: -50,
          child: Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Colors.amber,
            ),
          )),
      Positioned(
          top: -80,
          left: -80,
          child: Container(
            height: 200,
            width: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: Colors.amber,
            ),
          )),
    ])));
  }

  void onForgot() async {
    if (formkey.currentState!.validate()) {
      try {
        await auth.sendPasswordResetEmail(
            email: emailController.text.toLowerCase().trim());
        Fluttertoast.showToast(msg: "Reset password link sent");
      } on FirebaseAuthException catch (error) {
        Fluttertoast.showToast(msg: error.code);
      }
    }
  }
}
