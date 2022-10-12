import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:groceryapp/firebase/auth.dart';
import 'package:groceryapp/screen/declare.dart';
import 'package:groceryapp/screen/productdecreption.dart';
import 'package:groceryapp/screen/register.dart';
import 'package:groceryapp/screen/selectcategory.dart';
import '../model/category.dart';
import '../model/utils.dart';
import 'homescreen.dart';
import 'package:google_sign_in/google_sign_in.dart';

Demo d1 = Demo();

class myTextFormField extends StatefulWidget {
  final TextEditingController mycontroller;
  final Icon myIcon;
  final String hintText;
  final bool obscureText;
  final TextInputType keyboardType;
  final String? Function(String?)? validator;

  const myTextFormField({
    Key? key,
    required this.mycontroller,
    required this.myIcon,
    required this.hintText,
    required this.obscureText,
    required this.keyboardType,
    required this.validator,
  }) : super(key: key);

  @override
  State<myTextFormField> createState() => _myTextFormFieldState();
}

class _myTextFormFieldState extends State<myTextFormField> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width - 60,
        child: TextFormField(
          controller: widget.mycontroller,
          decoration: InputDecoration(
              prefixIcon: widget.myIcon,
              hintText: widget.hintText,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50),
                borderSide: BorderSide(color: Colors.amber, width: 2),
              ),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                  borderSide: BorderSide(color: Colors.amber, width: 2)),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(50))),
          obscureText: widget.obscureText,
          keyboardType: widget.keyboardType,
          validator: widget.validator,
        ));
  }
}

class myprofile extends StatefulWidget {
  final String s1;
  final Icon i1;
  final Function onTap;
  const myprofile({
    required this.s1,
    required this.i1,
    required this.onTap,
    Key? key,
  }) : super(key: key);

  @override
  State<myprofile> createState() => _myprofileState();
}

class _myprofileState extends State<myprofile> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        print("clicked");
      },
      child: ListTile(
        leading: widget.i1,
        title: Text(widget.s1),
        trailing: Icon(Icons.arrow_forward_ios, color: Colors.black),
      ),
    );
  }
}

class homeContainer extends StatelessWidget {
  const homeContainer({
    Key? key,
    required this.category,
  }) : super(key: key);

  final Category category;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: category.c1, width: 2),
          borderRadius: BorderRadius.circular(20),
          color: category.c2),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => SelectCategory(category)));
                },
                child: Image.asset(category.image, height: 100))
          ],
        ),
        SizedBox(height: 5),
        Align(
          alignment: Alignment.center,
          child: Text(
            category.title,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        )
      ]),
    );
  }
}

class ListContainer1 extends StatefulWidget {
  const ListContainer1({
    Key? key,
  }) : super(key: key);

  @override
  State<ListContainer1> createState() => _ListContainer1State();
}

class _ListContainer1State extends State<ListContainer1> {
  List<Category> categories = Utils.getMockedcategories();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, top: 10),
      child: Container(
        height: 160,
        child: ListView.separated(
            itemCount: 3,
            scrollDirection: Axis.horizontal,
            separatorBuilder: (BuildContext context, int index) => SizedBox(
                  width: 10,
                ),
            itemBuilder: (BuildContext context, int index) {
              Category category = categories[index];
              return Container(
                width: 200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: categories[index].c2,
                    border: Border.all(width: 2, color: categories[index].c1),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 5,
                      )
                    ]),
                child: Column(
                  children: [
                    GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      SelectCategory(categories[index])));
                        },
                        child: Image.asset(
                          category.image,
                          height: 100,
                        )),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      category.title,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              );
            }),
      ),
    );
  }
}

class ListContainer2 extends StatefulWidget {
  final Axis s1;

  const ListContainer2({Key? key, required this.s1}) : super(key: key);

  @override
  State<ListContainer2> createState() => _ListContainer2State();
}

class _ListContainer2State extends State<ListContainer2> {
  List<Category> categories = Utils.getMockedcategories();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, top: 10),
      child: Container(
        height: 200,
        child: GridView.builder(
            scrollDirection: widget.s1,
            itemCount: categories.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1, mainAxisSpacing: 10),
            itemBuilder: (BuildContext context, int index) {
              return Container(
                  width: 190,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.white,
                      border: Border.all(width: 2, color: categories[index].c1),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 5,
                        )
                      ]),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 7,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            categories[index].subcategory[index].image,
                            height: 100,
                          ),
                        ],
                      ),
                      const SizedBox(height: 15),
                      Padding(
                        padding: const EdgeInsets.only(left: 27),
                        child: Text(
                          categories[index].subcategory[index].title,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            // color: Colors.red,
                          ),
                        ),
                      ),
                      const SizedBox(height: 5),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            categories[index].subcategory[index].price,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.grey,
                            ),
                          ),
                          GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => ProductDecreption(
                                            categories[index]
                                                .subcategory[index])));
                              },
                              child: Icon(
                                Icons.add_circle_rounded,
                                color: Colors.amber,
                                size: 40,
                              ))
                        ],
                      ),
                    ],
                  ));
            }),
      ),
    );
  }
}

class GoogleButton extends StatefulWidget {
  const GoogleButton({
    Key? key,
  }) : super(key: key);

  @override
  State<GoogleButton> createState() => _GoogleButtonState();
}

class _GoogleButtonState extends State<GoogleButton> {
  Future<void> google_sign_in(context) async {
    final googleSignIn = GoogleSignIn();
    final googleAccount = await googleSignIn.signIn();
    if (googleAccount != null) {
      final googleAuth = await googleAccount.authentication;
      if (googleAuth.accessToken != null && googleAuth.idToken != null) {
        try {
          final authresult = await auth.signInWithCredential(
              GoogleAuthProvider.credential(
                  idToken: googleAuth.idToken,
                  accessToken: googleAuth.accessToken));
          final uid = authresult.user!.uid;
          print(uid);

          if (authresult.additionalUserInfo!.isNewUser) {
            await FirebaseFirestore.instance.collection('users').doc(uid).set({
              'id': uid,
              'name': auth.currentUser!.displayName,
              'email': auth.currentUser!.email,
              'imageurl': auth.currentUser!.photoURL,
              'createdAt': Timestamp.now()
            });
          } else {
            print("already created $uid");
          }
          Navigator.push(
              context, MaterialPageRoute(builder: ((context) => HomeScreen())));
        } on FirebaseException catch (error) {
          // Fluttertoast.showToast(msg: error.code);
          print(error);
        } catch (error) {
          // Fluttertoast.showToast(msg: error.toString());
          print(error);
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        google_sign_in(context);
        print("clicked");
      },
      child: Container(
          width: MediaQuery.of(context).size.width - 60,
          height: 50,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              border: Border.all(color: Colors.grey),
              boxShadow: [BoxShadow(color: Colors.white)]),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(d1.google),
                SizedBox(
                  width: 15,
                ),
                Text(
                  "Continue with Google",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          )),
    );
  }
}
