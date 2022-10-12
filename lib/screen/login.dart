import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:groceryapp/firebase/auth.dart';
import 'package:groceryapp/screen/declare.dart';
import 'package:groceryapp/screen/forgot.dart';
import 'package:groceryapp/screen/homescreen.dart';
import 'package:groceryapp/screen/register.dart';
import 'package:groceryapp/screen/widget.dart';
import 'package:email_validator/email_validator.dart';

class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    emailController.dispose();
    passController.dispose();
  }

  Demo d1 = new Demo();
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();

  String password = "";
  String email = "";

  final formkey = GlobalKey<FormState>();

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
                  autovalidateMode: AutovalidateMode.always,
                  child: Column(
                    children: [
                      myTextFormField(
                          mycontroller: emailController,
                          hintText: "Enter Email",
                          obscureText: false,
                          keyboardType: TextInputType.text,
                          myIcon: Icon(
                            Icons.person,
                            color: d1.icon_color,
                            size: d1.icon_size,
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Enter email";
                            } else if (!EmailValidator.validate(value)) {
                              return "Enter valid email";
                            } else {
                              return null;
                            }
                          }),
                      SizedBox(
                        height: 20,
                      ),
                      myTextFormField(
                        mycontroller: passController,
                        hintText: "Enter Password",
                        obscureText: true,
                        keyboardType: TextInputType.text,
                        myIcon: Icon(
                          Icons.lock,
                          color: d1.icon_color,
                          size: d1.icon_size,
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Enter password";
                          } else if (value.length < 8 || value.length > 32) {
                            return "Enter the password range between 8 to 32";
                          } else if (RegExp(r'[\s]').hasMatch(value)) {
                            return "Password does not contain white spaces";
                          } else {
                            return null;
                          }
                        },
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 50, top: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: ((context) => Forgot())));
                              },
                              child: Text(
                                "Forgot Password ?",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width - 60,
                        child: ElevatedButton(
                          onPressed: () {
                            onSignIN();
                          },
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.amber),
                            foregroundColor:
                                MaterialStateProperty.all(Colors.black),
                            textStyle: MaterialStateProperty.all(TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold)),
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50))),
                          ),
                          child: Text("SIGN-IN"),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 4,
                        indent: 35,
                        endIndent: 5,
                        color: Colors.amber,
                      ),
                    ),
                    Text(
                      "OR",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Expanded(
                        child: Divider(
                      thickness: 4,
                      indent: 5,
                      endIndent: 35,
                      color: Colors.amber,
                    ))
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                GoogleButton(),
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text("SIGN-UP",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            )),
                        SizedBox(
                          width: 20,
                        ),
                        FloatingActionButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: ((context) => Register())));
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

  void onSignIN() async {
    if (formkey.currentState!.validate()) {
      try {
        final authresult = await auth.signInWithEmailAndPassword(
            email: emailController.text.toLowerCase().trim(),
            password: passController.text.trim());

        Fluttertoast.showToast(msg: "logged in");

        Timer(
            Duration(seconds: 3),
            () => Navigator.push(context,
                MaterialPageRoute(builder: ((context) => HomeScreen()))));

        print("success ${authresult.user!.uid}");
      } on FirebaseAuthException catch (error) {
        Fluttertoast.showToast(msg: error.code);
      }
    }
  }
}
