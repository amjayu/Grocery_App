import 'package:flutter/material.dart';
import 'package:groceryapp/model/category.dart';
import 'package:groceryapp/screen/productdecreption.dart';

class SelectCategory extends StatefulWidget {
  final Category c1;

  SelectCategory(this.c1);

  @override
  State<SelectCategory> createState() => _SelectCategoryState();
}

class _SelectCategoryState extends State<SelectCategory> {
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.c1.title),
          backgroundColor: Colors.amber,
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 15, right: 20, top: 20),
          child: GridView.count(
              crossAxisCount: 2,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              childAspectRatio: screenWidth / 470,
              children: List.generate(widget.c1.subcategory.length, ((index) {
                return Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.white,
                        // shape: BoxShape.rectangle,
                        border:
                            Border.all(width: 2, color: Colors.grey.shade400),
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
                            Image.asset(widget.c1.subcategory[index].image,
                                height: 100),
                          ],
                        ),
                        SizedBox(height: 15),
                        Padding(
                          padding: const EdgeInsets.only(left: 27),
                          child: Text(
                            widget.c1.subcategory[index].title,
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              // color: Colors.red,
                            ),
                          ),
                        ),
                        SizedBox(height: 5),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              widget.c1.subcategory[index].price,
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
                                          builder: (context) =>
                                              ProductDecreption(widget
                                                  .c1.subcategory[index])));
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
              }))),
        ));
  }
}
