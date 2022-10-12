import 'package:flutter/material.dart';
import 'package:groceryapp/screen/declare.dart';
import 'package:groceryapp/screen/widget.dart';

class Forgot_Demo extends StatelessWidget {
  Demo d1 = new Demo();

  TextEditingController pass1 = TextEditingController();
  TextEditingController pass2 = TextEditingController();
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
                myTextFormField(
                  mycontroller: pass1,
                  hintText: "Enter New Password",
                  obscureText: false,
                  keyboardType: TextInputType.text,
                  myIcon: Icon(
                    Icons.lock,
                    color: d1.icon_color,
                    size: d1.icon_size,
                  ),
                  // autovalidateMode: AutovalidateMode.disabled,
                  validator: (value) {},
                ),
                SizedBox(
                  height: 20,
                ),
                myTextFormField(
                  mycontroller: pass1,
                  hintText: "Reenter Password",
                  obscureText: false,
                  keyboardType: TextInputType.text,
                  myIcon: Icon(
                    Icons.lock,
                    color: d1.icon_color,
                    size: d1.icon_size,
                  ),
                  // autovalidateMode: AutovalidateMode.disabled,
                  validator: (value) {},
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                    width: MediaQuery.of(context).size.width - 60,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text("Update Password"),
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
}
