import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:groceryapp/firebase/auth.dart';
import 'package:groceryapp/screen/declare.dart';
import 'package:groceryapp/screen/login.dart';
import 'package:groceryapp/screen/widget.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Register extends StatefulWidget {
  get url => null;

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  void dispose() {
    super.dispose();
    nameController.dispose();
    emailController.dispose();
    passController.dispose();
  }

  Demo d1 = Demo();

  TextEditingController nameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController passController = TextEditingController();

  String _default =
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR9OIEewQ6injKiEC0aDlOt3r7Q8Wf7bEeyK_bYtE4wSjcw1QmyHY-dLNM7Vk46Dp82l_o&usqp=CAU";

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
                    child: Column(children: [
                      myTextFormField(
                        mycontroller: nameController,
                        hintText: "Enter name",
                        obscureText: false,
                        keyboardType: TextInputType.text,
                        myIcon: Icon(
                          Icons.person,
                          color: d1.icon_color,
                          size: d1.icon_size,
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Enter name";
                          } else if (!RegExp(r'[\a-zA-Z]+$').hasMatch(value)) {
                            return "Enter valid name";
                          } else if (value.length < 8 || value.length > 20) {
                            return "Enter the name between 8 to 20 letters";
                          } else {
                            return null;
                          }
                        },
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      myTextFormField(
                          mycontroller: emailController,
                          myIcon: Icon(
                            Icons.email,
                            color: d1.icon_color,
                            size: d1.icon_size,
                          ),
                          hintText: "Enter Email",
                          obscureText: false,
                          keyboardType: TextInputType.text,
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
                            return "Enter the password range between 8 to 32 letters";
                          } else if (RegExp(r'[\s]').hasMatch(value)) {
                            return "Password does not contain white spaces";
                          } else {
                            return null;
                          }
                        },
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                          width: MediaQuery.of(context).size.width - 60,
                          height: 40,
                          child: ElevatedButton(
                            onPressed: () {
                              onSignUP();
                            },
                            child: Text("SIGN-UP"),
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.amber),
                                textStyle: MaterialStateProperty.all(TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold)),
                                shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(50)))),
                          )),
                      SizedBox(
                        height: 20,
                      ),
                    ])),
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

  Future<void> onSignUP() async {
    // final user=auth.currentUser;
    // final uid=user!.uid;
    String _default = 'C:/groceryapp/assets/images/user_profile.png';

    if (formkey.currentState!.validate()) {
      try {
        final authresult = await auth.createUserWithEmailAndPassword(
            email: emailController.text.toLowerCase().trim(),
            password: passController.text.trim());
        final uid = authresult.user!.uid;
        await FirebaseFirestore.instance.collection('users').doc(uid).set({
          'id': uid,
          'name': nameController.text,
          'email': emailController.text.toLowerCase().trim(),
          'password': passController.text.trim(),
          'imageurl': _default,
          'createdAt': Timestamp.now()
        }, SetOptions(merge: true));
        print("success $uid");
        Fluttertoast.showToast(
          msg: "Successfully Registered",
          toastLength: Toast.LENGTH_SHORT,
        );

        Timer(
            const Duration(seconds: 3),
            () => Navigator.push(
                context, MaterialPageRoute(builder: ((context) => Login()))));
      } on FirebaseAuthException catch (error) {
        print("Error occured ${error.message}");
        Fluttertoast.showToast(
            msg: error.code,
            toastLength: Toast.LENGTH_SHORT,
            backgroundColor: Colors.black,
            fontSize: 20);
      } catch (error) {
        Fluttertoast.showToast(
            msg: error.toString(),
            toastLength: Toast.LENGTH_SHORT,
            backgroundColor: Colors.black,
            fontSize: 20);
      }
    }
  }
}
