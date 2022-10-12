import 'package:carousel_slider/carousel_slider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:groceryapp/firebase/auth.dart';
import 'package:groceryapp/screen/categoryscreen.dart';
import 'package:groceryapp/screen/declare.dart';
import 'package:groceryapp/screen/login.dart';
import 'package:groceryapp/screen/widget.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState(){
    getUserData();
    super.initState();
    
  }
  Demo d1 = Demo();
  String photo="";
  String name="";
  String email="";
  String password="";
  String id="";
  int activeIndex = 0;
  List<String> s1 = [
    "assets/images/home_image.jpg",
    "assets/images/home_image1.jpg",
    "assets/images/home_image2.jpg",
    "assets/images/home_image3.jpg",
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Home"),
          centerTitle: true,
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                    Container(
                      height: 70,
                      width: 70,
                      child: ClipOval(child: Image.network(photo))
                    )    
                   ] ), 
                    SizedBox(
                      height: 10,
                    ),
                    
                    Text(email),
                    SizedBox(
                      height: 10,
                    ),
                    Text(name),
                  ],
                ),
              ),
              ListTile(
                leading: Icon(Icons.person),
                title: Text("Address",style: TextStyle(
                  fontSize: 15,
                ),),
              ),
              ListTile(
                leading: Icon(Icons.shopping_bag_outlined),
                title: Text("Orders",style: TextStyle(
                  fontSize: 15,
                ),),
              ),
              ListTile(
                leading: Icon(Icons.info_outline),
                title: Text("About",style: TextStyle(
                  fontSize: 15,
                ),),
              ),
              ListTile(
                leading: Icon(Icons.help_outline),
                title: Text("Help",style: TextStyle(
                  fontSize: 15,
                ),),
              ),
              ListTile(
                leading: Icon(Icons.logout_rounded),
                title: Text("Logout",style: TextStyle(
                  fontSize: 15,
                ),),
                onTap: ()async {
                // final FirebaseAuth auth=FirebaseAuth.instance;
                  // final user=auth.currentUser;
                  
                    await GoogleSignIn().signOut();
                    print("google email signout $uid");
                    await auth.signOut();
                    print("normal email signout $uid");
                  
                  Navigator.push(context,
                  MaterialPageRoute(builder: ((context) => Login())));
                },
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: CarouselSlider.builder(
                  itemCount: s1.length,
                  options: CarouselOptions(
                      height: 300,
                      aspectRatio: 16 / 9,
                      viewportFraction: 0.9,
                      autoPlay: true,
                      autoPlayInterval: Duration(seconds: 5),
                      enlargeCenterPage: true,
                      scrollDirection: Axis.horizontal,
                      onPageChanged: (index, reason) {
                        setState(() {
                          activeIndex = index;
                        });
                        
                      }),
                  itemBuilder: (context, index, realIndex) {
                    final image = s1[index];
                    return Container(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Image.asset(
                          image,
                          fit: BoxFit.fill,
                        ),
                      ),
                    );
                  }),
            ),
            SizedBox(
              height: 20,
            ),
            AnimatedSmoothIndicator(
                activeIndex: activeIndex,
                count: s1.length,
                effect: CustomizableEffect(
                    dotDecoration: DotDecoration(
                      color: Colors.black54,
                      width: 10,
                      height: 10,
                    ),
                    activeDotDecoration: DotDecoration(
                      borderRadius: BorderRadius.circular(100),
                      width: 20,
                      height: 20,
                    ),
                    activeColorOverride: (i) => colors[i])),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Categories",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => categoryScreen()));
                    },
                    child: Text(
                      "See all",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.red,
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            ListContainer1(),
            SizedBox(height: 20),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    "Popular",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            ListContainer2(
              s1: Axis.horizontal,
            ),
            SizedBox(
              height: 20,
            )
          ]),
        ));
  }
  
  Future<void>getUserData() async{
    if(user==null){
      print("user is not exist");
    }
    else{
    try{
      final user=auth.currentUser!.uid;
      final DocumentSnapshot snapshot = await FirebaseFirestore.instance.collection("users").doc(user).get();
      print(user);
        // id=userDoc.get('id');
        setState(() {
        photo=snapshot.get('imageurl');
        name=snapshot.get('name');
        email=snapshot.get('email');
        password=snapshot.get('password');
        });
        
    }on FirebaseException catch(error){
      Fluttertoast.showToast(msg: error.code);
    }
    catch(error){
      Fluttertoast.showToast(msg: error.toString());
    }
  }
  }
}


final colors =[
  Colors.greenAccent,
  Colors.amberAccent,
  Colors.indigo,
  Colors.redAccent
];
