import 'package:flutter/material.dart';
import 'package:groceryapp/model/category.dart';
import 'package:groceryapp/screen/declare.dart';
import 'package:groceryapp/model/utils.dart';
import 'package:groceryapp/screen/widget.dart';

class categoryScreen extends StatelessWidget {
  Demo d1 = new Demo();
  List<Category> categories = Utils.getMockedcategories();

  categoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text("Category"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
        child: GridView.builder(
            itemCount: categories.length,
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 20,
              crossAxisSpacing: 10,
              childAspectRatio: screenWidth / 360,
            ),
            itemBuilder: (BuildContext context, int index) {
              Category category = categories[index];
              return homeContainer(category: category);
            }),
      ),
    );
  }
}
