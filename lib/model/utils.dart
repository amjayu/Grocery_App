import 'package:flutter/material.dart';
import 'package:groceryapp/model/category.dart';

class Utils {
  static List<Category> getMockedcategories() {
    return [
      Category(
          image: d1.fruits,
          c1: Colors.green,
          c2: Colors.green.shade100,
          title: "Fruits",
          onTap: () {},
          subcategory: [
            Product(
                image: d1.fruits_apple,
                title: "Apple",
                price: "₹149/1 kg",
                productSubCategory: [
                  ProductDetails(
                      c1: Colors.red,
                      c2: Colors.red.shade100,
                      decription:
                          "Washington Apples are a natural supply of fibre and are fat free. They include polynutrients and anti-oxidants.These Washington Apples are sweet, crisp, red, soft-skinned, highly aromatic juicy fruits.",
                      cartCategory: [
                        CartDetails(product_price: "149", unit: "1 kg")
                      ])
                ]),
            Product(
                image: d1.fruits_banana,
                title: "Banana",
                price: "₹20/5 pcs",
                productSubCategory: [
                  ProductDetails(
                      c1: Colors.yellow,
                      c2: Colors.yellow.shade100,
                      decription:
                          "Robusta, Relish the soft, buttery texture of Robusta bananas that are light green and have a great fragrance and taste. The stalks of Robustas are thick and rigid.One banana supplies 30 percent of the daily vitamin B6 requirement and is rich in vitamin C, potassium and fiber.",
                      cartCategory: [
                        CartDetails(product_price: "20", unit: "5 pcs")
                      ])
                ]),
            Product(
                image: d1.fruits_kivi,
                title: "Kivi",
                price: "₹236/1 kg",
                productSubCategory: [
                  ProductDetails(
                      c1: Colors.green,
                      c2: Colors.green.shade100,
                      decription:
                          "Kiwis are an extremely versatile fruit. On their own they make an excellent addition to your breakfast, not to mention that they're very healthy for you! For a treat, top your kiwi with whipped cream and chopped nuts for a tasty dessert that's sure to please friends and family. ",
                      cartCategory: [
                        CartDetails(product_price: "236", unit: "1 kg")
                      ])
                ]),
            Product(
                image: d1.fruits_mango,
                title: "Mango",
                price: "₹200/500 gm",
                productSubCategory: [
                  ProductDetails(
                      c1: Colors.amber,
                      c2: Colors.amber.shade100,
                      decription:
                          "Fresho Kesar Mango, Gir Kesar, due to its cultivation in foothills of Girnar, is irresistibly sweet, juicy and delicious. Skin is yellow with a tinge of green on the outside.It is a good source of vitamin A, C and Potassium.",
                      cartCategory: [
                        CartDetails(product_price: "200", unit: "500 gm")
                      ])
                ]),
            Product(
                image: d1.fruits_strawberry,
                title: "Strawberry",
                price: "₹290/500 gm",
                productSubCategory: [
                  ProductDetails(
                      c1: Colors.redAccent,
                      c2: Colors.redAccent.shade100,
                      decription:
                          "Extremely juicy and syrupy, these conical heart shaped fruits have seeds on the skin that give them a unique texture.The fruit is widely appreciated for its characteristic aroma, bright red color, juicy texture, and sweetness.",
                      cartCategory: [
                        CartDetails(product_price: "290", unit: "500 gm")
                      ])
                ]),
            Product(
                image: d1.fruits_grapes,
                title: "Grapes",
                price: "₹118/500 gm",
                productSubCategory: [
                  ProductDetails(
                      c1: Colors.greenAccent,
                      c2: Colors.greenAccent.shade100,
                      decription:
                          "Juicy and snappy, with a beautiful balance of sweet and tart flavour, these grape bunches have a lingering taste.Grapes are good source of Vitamin C,K,B6, They also promote heart health and strengthen immunity.",
                      cartCategory: [
                        CartDetails(product_price: "118", unit: "500 gm")
                      ])
                ]),
          ]),
      Category(
          image: d1.vegetables,
          c1: Colors.orange,
          c2: Colors.orange.shade100,
          title: "Vegetables",
          onTap: () {},
          subcategory: [
            Product(
                image: d1.vegetable_carrot,
                title: "Carrot",
                price: "₹126/1 kg",
                productSubCategory: [
                  ProductDetails(
                      c1: Colors.orange,
                      c2: Colors.orange.shade100,
                      decription:
                          "Carrots are a great addition to soups and stews, appetizers and hors d'oeuvres, side dishes and salads.They can be roasted in the oven or boiled on the stove top. Try using carrots in place of potato slices in soup, for a lower-carbohydrate meal.",
                      cartCategory: [
                        CartDetails(product_price: "126", unit: "1 kg")
                      ])
                ]),
            Product(
                image: d1.vegetable_garlic,
                title: "Garlic",
                price: "₹82/1 kg",
                productSubCategory: [
                  ProductDetails(
                      c1: Colors.blue,
                      c2: Colors.blue.shade100,
                      decription:
                          "Garlic has a distinctive flavor that can be strong when raw, and sharp or bitter when burnt. Raw garlic flavour diminishes as garlic is cooked thoroughly. It is used to flavor many foods, such as salad dressings, vinaigrettes, marinades, sauces, vegetables, meats, soups, and stews.",
                      cartCategory: [
                        CartDetails(product_price: "82", unit: "1 kg")
                      ])
                ]),
            Product(
                image: d1.vegetable_onions,
                title: "Onions",
                price: "₹25/1 kg",
                productSubCategory: [
                  ProductDetails(
                      c1: Colors.pink,
                      c2: Colors.pink.shade100,
                      decription:
                          "The beauty of an Onion is that it can go just about anywhere. Cut it into thin slices to top off your favourite burger or hot dog, or chop it into little cubes to bring out the sweetness in curry dishes. Chopped Onions are perfect for fish dishes, quiche, stews and chili.",
                      cartCategory: [
                        CartDetails(product_price: "25", unit: "1 kg")
                      ])
                ]),
            Product(
                image: d1.vegetable_potato,
                title: "Potato",
                price: "₹38/1 kg",
                productSubCategory: [
                  ProductDetails(
                      c1: Colors.brown,
                      c2: Colors.brown.shade100,
                      decription:
                          "These are a special variant early harvest of potatoes (not to be confused with our regular Fresho Potato) and are easily distinguishable with their thin/ tender skin which makes them easy-to-peel off even it can be used without peeling. These freshly picked potatoes are a great choice for roasting or boiling.",
                      cartCategory: [
                        CartDetails(product_price: "38", unit: "1 kg")
                      ])
                ]),
            Product(
                image: d1.vegetable_tomato,
                title: "Tomato",
                price: "₹20/1 kg",
                productSubCategory: [
                  ProductDetails(
                      c1: Colors.red,
                      c2: Colors.red.shade100,
                      decription:
                          "Fresh,and delicious tomatoes are a summertime favourite. Tomatoes are perfect for sauces and salsas, or try marinating them in herbs and olive oil for an easy appetizer.Tomatoes contain Vitamin C,K. lycopene, an antioxidant that reduces the risk of cancer and heart-diseases.",
                      cartCategory: [
                        CartDetails(product_price: "20", unit: "1 kg")
                      ])
                ]),
            Product(
                image: d1.vegetable_bhindi,
                title: "Lady Finger",
                price: "₹25/1 kg",
                productSubCategory: [
                  ProductDetails(
                      c1: Colors.green,
                      c2: Colors.green.shade100,
                      decription:
                          "A green colored oblong shaped vegetable, tapering at the end with tiny seeds inside. It is also known as okra or gumbo. It is often used as an ingredient in Indian and Pakistani cuisine. The entire plant is edible and its leaves are usually eaten raw in salads.",
                      cartCategory: [
                        CartDetails(product_price: "25", unit: "1 kg")
                      ])
                ]),
          ]),
      Category(
          image: d1.frozen,
          c1: Colors.blue,
          c2: Colors.blue.shade100,
          title: "Frozen",
          onTap: () {},
          subcategory: [
            Product(
                image: d1.frozen_icecream,
                title: "Icecream",
                price: "₹20/100 ml",
                productSubCategory: [
                  ProductDetails(
                      c1: Colors.pink,
                      c2: Colors.pink.shade100,
                      decription:
                          "Creamy Butterscotch icecream inside Crispy wafer biscuit cone India's most loved ice cream cone. Taste of Real milk, real ice cream.In the world of Amul Ice Cream, happiness and excitement go hand-in-hand with good health and delicious flavours.",
                      cartCategory: [
                        CartDetails(product_price: "20", unit: "100 ml")
                      ])
                ]),
            Product(
                image: d1.frozen_peas,
                title: "Peas",
                price: "₹216/1 kg",
                productSubCategory: [
                  ProductDetails(
                      c1: Colors.green,
                      c2: Colors.green.shade100,
                      decription:
                          "Frozen yet refreshing Green Peas from the house of Best Farm are high in protein and Fibre content. These tender and sweet pods are packed with nutrition. Vibrant and full of freshness they bring additional taste to any basic dish",
                      cartCategory: [
                        CartDetails(product_price: "216", unit: "1 kg")
                      ])
                ]),
            Product(
                image: d1.frozen_pizza,
                title: "Pizza",
                price: "₹109/400 gm ",
                productSubCategory: [
                  ProductDetails(
                      c1: Colors.purple,
                      c2: Colors.purple.shade100,
                      decription:
                          "Fresho brings to you Whole Wheat Pizza Base, a healthy alternative to fighting your guilt of adding on that extra pound. Let's bring some more joy to pizza nights and parties with this pizza made from whole wheat.",
                      cartCategory: [
                        CartDetails(product_price: "109", unit: "400 gm")
                      ])
                ]),
            Product(
                image: d1.frozen_ready_meals,
                title: "Ready_meals",
                price: "₹160/500 gm",
                productSubCategory: [
                  ProductDetails(
                      c1: Colors.grey,
                      c2: Colors.grey.shade300,
                      decription:
                          "MTR Breakfast Mix - Oats Idli fill your tummy instantly with the strong and nutritious. Take the package and break your hunger pang with the greatest flavor and ready to get arranged quickly Oats Idli. It has been extracted from the delicately graded ingredients.",
                      cartCategory: [
                        CartDetails(product_price: "160", unit: "500 gm")
                      ])
                ]),
          ]),
      Category(
          image: d1.bakery,
          c1: Colors.brown,
          c2: Colors.brown.shade100,
          title: "Bread",
          onTap: () {},
          subcategory: [
            Product(
                image: d1.bakery_bread,
                title: "Bread",
                price: "₹12/100 gm",
                productSubCategory: [
                  ProductDetails(
                      c1: Colors.brown,
                      c2: Colors.brown.shade100,
                      decription:
                          "Milled from 100% whole grains of wheat, this bread is low in saturated fat and doubles up as a good source of fibre.Whether you live to eat or eat to live, it's best when it's done right.",
                      cartCategory: [
                        CartDetails(product_price: "12", unit: "100 gm")
                      ])
                ]),
            Product(
                image: d1.bakery_cookies,
                title: "Cookies",
                price: "₹16/100 gm",
                productSubCategory: [
                  ProductDetails(
                      c1: Colors.deepOrange,
                      c2: Colors.deepOrange.shade100,
                      decription:
                          "As nutritious as tasty, every bite of this cookie makes any moment an occasion to cherish. Every time a cookie lover reaches out for a real cookie, the only one that will meet the craving is the cookie with more.With over 30 variants including 7 sugar-free flavours, Unibic has something more for the entire family.",
                      cartCategory: [
                        CartDetails(product_price: "16", unit: "100 gm")
                      ])
                ]),
            Product(
                image: d1.bakery_muffins,
                title: "Muffins",
                price: "₹61/100 gm",
                productSubCategory: [
                  ProductDetails(
                      c1: Colors.black,
                      c2: Colors.black.withOpacity(0.5),
                      decription:
                          "The Fresho Signature Muffin/Cup Cake - Choco Chip is baked to perfection. Topped with choco chips, soft on the inside and with a crumbly texture, this sweet goes well during a mini snack break or can even be enjoyed as a dessert after a meal. You can also have it with a warm cup of coffee.",
                      cartCategory: [
                        CartDetails(product_price: "61", unit: "100 gm")
                      ])
                ]),
            Product(
                image: d1.bakery_pies,
                title: "Pies",
                price: "₹126/12 pcs",
                productSubCategory: [
                  ProductDetails(
                      c1: Colors.yellow,
                      c2: Colors.yellow.shade100,
                      decription:
                          "The Orion Choco Pie is the original Choco Pie, a snack cake consisting of two small round layers of chocolate-coated cake with marshmallow filling. Satiate your hunger pangs with a delicious chocolate coated snack with no synthetic colour, no MSG, no synthetic preservatives and no nasty stuff.",
                      cartCategory: [
                        CartDetails(product_price: "126", unit: "12 pcs")
                      ])
                ]),
          ]),
      Category(
          image: d1.condiments,
          c1: Colors.red,
          c2: Colors.pink.shade100,
          title: "Condiments",
          onTap: () {},
          subcategory: [
            Product(
                image: d1.condiments_ketchup,
                title: "Ketchup",
                price: "₹145/1 kg",
                productSubCategory: [
                  ProductDetails(
                      c1: Colors.red,
                      c2: Colors.red.shade100,
                      decription:
                          "Kissan Fresh Tomato Ketchup is a must have at all homes and is most loved by Indians! This sauce bottle and pouch packs can either be paired with fries or noodles or dhokla. This can be added to almost every dish to make them so much tastier.",
                      cartCategory: [
                        CartDetails(product_price: "145", unit: "1 kg")
                      ])
                ]),
            Product(
                image: d1.condiments_mayonnaise,
                title: "Mayonnaise",
                price: "₹149/500 gm",
                productSubCategory: [
                  ProductDetails(
                      c1: Color.fromARGB(255, 250, 230, 208),
                      c2: Color.fromRGBO(250, 230, 208, 0.5),
                      decription:
                          "Wingreens Farm Premium Veg Mayo is creamy, rich, and smooth. Not to mention ridiculously delicious. A full-bodied mayo that adds a flavourful kick to just about everything. And they say vegetarian alternatives are tasteless. Psshh! Try it with your sandwiches, burgers, meats, kinds of pasta, fries and more.",
                      cartCategory: [
                        CartDetails(product_price: "149", unit: "500 gm")
                      ])
                ]),
            Product(
                image: d1.condiments_oregano,
                title: "Oregano",
                price: "₹95/100 gm",
                productSubCategory: [
                  ProductDetails(
                      c1: Colors.green,
                      c2: Colors.green.shade100,
                      decription:
                          "Snapin Oregano is a multi-purpose herb seasoning. It can be added to pasta, pizza, salads, sandwiches, burgers or any other dish of your liking. Furthermore, the product's hygienic packaging ensures that the herbs remain fresh over a long period of time. Buy this product online today.",
                      cartCategory: [
                        CartDetails(product_price: "95", unit: "500 gm")
                      ])
                ]),
            Product(
                image: d1.condiments_pepper,
                title: "Pepper",
                price: "₹94/100 gm",
                productSubCategory: [
                  ProductDetails(
                      c1: Colors.black,
                      c2: Colors.black.withOpacity(0.5),
                      decription:
                          "Pepper has a distinct, strong, and aromatic taste of its own. Black Pepper along with stemless chilli, mustard seeds, and onions, is used in sauteing and tempering dals and vegetable dishes.It is a rich supply of manganese, potassium, iron, vitamin-C, K, and dietary fiber.",
                      cartCategory: [
                        CartDetails(product_price: "94", unit: "100 gm")
                      ])
                ]),
            Product(
                image: d1.condiments_salt,
                title: "Salt",
                price: "₹22/1 kg",
                productSubCategory: [
                  ProductDetails(
                      c1: Colors.pink,
                      c2: Colors.pink.shade100,
                      decription:
                          "Tata and quality are synonymous in the world today. Tata Iodized Salt has been a staple in kitchens for generations now.Salt is one of the most important ingredients we use in food and cooking. It is a good method for food fortification and it also adds taste and flavour to any dish.",
                      cartCategory: [
                        CartDetails(product_price: "22", unit: "1 kg")
                      ])
                ]),
            Product(
                image: d1.condiments_sugar,
                title: "Sugar",
                price: "₹45/1 kg",
                productSubCategory: [
                  ProductDetails(
                      c1: Colors.blue,
                      c2: Colors.blue.shade100,
                      decription:
                          "Sugar is the generalized name for sweet. Sugar is made from Sugarcane, the grains are light cream coloured. This is made from high-class sugarcane and is purified under a firm process is to produce organic manure, organic sugar cane like dung or compost is used.These sugar crystals dissolve easily.",
                      cartCategory: [
                        CartDetails(product_price: "45", unit: "1 kg")
                      ])
                ]),
          ]),
      Category(
          image: d1.beverages,
          c1: Colors.purple,
          c2: Colors.purple.shade100,
          title: "Beverages",
          onTap: () {},
          subcategory: [
            Product(
                image: d1.beverages_coffee,
                title: "Coffee",
                price: "₹175/100 gm",
                productSubCategory: [
                  ProductDetails(
                      c1: Colors.black,
                      c2: Colors.black.withOpacity(0.5),
                      decription:
                          "Start your day right with the first sip of Nescafe Classic Instant Coffee. Let the intense taste of coffee awaken your mind and body to new opportunities as the rich aroma of this distinctive blend unfolds.This coffee mix is an excellent way to kick start the day.",
                      cartCategory: [
                        CartDetails(product_price: "175", unit: "100 gm")
                      ])
                ]),
            Product(
                image: d1.beverages_hell,
                title: "Hell",
                price: "₹42/100 ml",
                productSubCategory: [
                  ProductDetails(
                      c1: Colors.redAccent,
                      c2: Colors.redAccent.shade100,
                      decription:
                          "Hell Energy drinks contain only quality ingredients such as only real granulated sugar is used which brings quick energy to the body. The benefits of the drink includes increased performance, heightened concentration, shorter reaction time, wakefulness, improved moods and better metabolism.",
                      cartCategory: [
                        CartDetails(product_price: "42", unit: "100 gm")
                      ])
                ]),
            Product(
                image: d1.beverages_juices,
                title: "Mango Juice",
                price: "₹40/600 ml",
                productSubCategory: [
                  ProductDetails(
                      c1: Colors.orange,
                      c2: Colors.orange.shade100,
                      decription:
                          "Mango juice is derived from mango fruit, which grows on tropical trees that belong to the Mangifera genus. Mango juice is made by pressing or blending out the juice from the soft, orange pulp of the mango to deliver significant amounts of vitamin C, vitamin A, potassium, iron, various carotenoids, and potent organic acids in every glass of juice.",
                      cartCategory: [
                        CartDetails(product_price: "40", unit: "600 ml")
                      ])
                ]),
            Product(
                image: d1.beverages_milk,
                title: "Milk",
                price: "₹30/500 ml",
                productSubCategory: [
                  ProductDetails(
                      c1: Colors.pink,
                      c2: Colors.pink.shade100,
                      decription:
                          "Amul Taaza fresh toned milk is an excellent quality milk from Gujarat. It can be consumed directly from the pack. This milk is excellent for making tea, coffee, adding to your breakfast cereals and preparing desserts or sweets.",
                      cartCategory: [
                        CartDetails(product_price: "30", unit: "500 ml")
                      ])
                ]),
            Product(
                image: d1.beverages_tea,
                title: "Tea",
                price: "₹429/1 kg",
                productSubCategory: [
                  ProductDetails(
                      c1: Colors.red,
                      c2: Colors.red.shade100,
                      decription:
                          "Brews togetherness by bringing people together over a tasty cup of tea made with your love and warmth. Start your mornings with Red Label Natural Care Tea. Indulge in truly rich flavours of this tea in every sip you have.",
                      cartCategory: [
                        CartDetails(product_price: "429", unit: "1 kg")
                      ])
                ]),
            Product(
                image: d1.beverages_water,
                title: "Water",
                price: "₹10/500 ml",
                productSubCategory: [
                  ProductDetails(
                      c1: Colors.blue,
                      c2: Colors.blue.shade100,
                      decription:
                          "The water in a Bisleri Mineral Water is typically sourced from the best Himalayan Mountain sources before being purified and packaged for drinking purposes. The water contains traces of calcium, magnesium, pH factor and even TDS and chlorides.",
                      cartCategory: [
                        CartDetails(product_price: "10", unit: "500 ml")
                      ])
                ]),
          ])
    ];
  }
}
