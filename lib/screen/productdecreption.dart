import 'package:flutter/material.dart';
import 'package:groceryapp/model/category.dart';

class ProductDecreption extends StatefulWidget {
  final Product p1;
  ProductDecreption(this.p1);
  @override
  State<ProductDecreption> createState() => _ProductDecreptionState();
}

class _ProductDecreptionState extends State<ProductDecreption> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
            itemCount: widget.p1.productSubCategory.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                child: SingleChildScrollView(
                    child: Stack(children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 300,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: Text(
                            widget.p1.title,
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 30),
                          child: Column(
                            children: [
                              Text(
                                widget.p1.productSubCategory[index].decription,
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey.shade600,
                                  height: 1.5,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 100,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 140,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey.shade200)),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 30),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 20),
                                  child: Text(
                                    "Price",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey.shade600),
                                  ),
                                ),
                                SizedBox(height: 10),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(widget.p1.price,
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 25,
                                        )),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 20),
                                      child: ElevatedButton(
                                        onPressed: () {
                                          // Navigator.push(context, MaterialPageRoute(builder: ((context) => CartScreen(widget.p1))));
                                        },
                                        child: Text(
                                          "Add to Cart",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20),
                                        ),
                                        style: ButtonStyle(
                                            fixedSize:
                                                MaterialStateProperty.all(
                                                    const Size(150, 50)),
                                            backgroundColor:
                                                MaterialStateProperty.all(
                                                    Colors.green.shade400),
                                            shape: MaterialStateProperty.all(
                                                RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20)))),
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Positioned(
                    top: -150,
                    child: Container(
                      height: 420,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(200),
                          border: Border.all(
                              color: widget.p1.productSubCategory[index].c1),
                          color: widget.p1.productSubCategory[index].c2),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          widget.p1.image,
                          height: 200,
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                      top: 10,
                      left: 25,
                      child: GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Icon(
                            Icons.arrow_back_ios,
                            color: Colors.black,
                          ))),
                  Positioned(
                      right: 25,
                      top: 10,
                      child: GestureDetector(
                          // onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: ((context) => CartScreen(widget().p1)))),
                          child: Icon(
                        Icons.shopping_cart_rounded,
                        color: Colors.black,
                      )))
                ])),
              );
            }));
  }
}
