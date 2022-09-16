import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:hallo/weight/Icon_prodact.dart';
import 'package:hallo/weight/constant.dart';

import '../weight/show_button_shit.dart';

class MyCart extends StatelessWidget {
  MyCart({Key? key}) : super(key: key);

  // final List content = [
  //   ["pepper_red.png", "Bell Pepper Red", "1kg,price", "\$4.99"],
  //   ["organic_egg.png", "Egg Chicken Red", "4pcs,price", "\$1.99"],
  //   ["banana", "Organic Banana", "12kg,price", "\$3.00"],
  //   ["Ginger", " Ginger", "250gm,price", "\$2.99"]
  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "My Cart",
          style: TextStyle(
            color: kBlackColor,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: kWhiteColor,
        elevation: 0.0,
      ),
      body: Column(children: [
        Expanded(
          child: ListView.separated(
            itemCount: cardItems.length,
            padding: const EdgeInsets.all(8),
            itemBuilder: (context, index) {
              return IconProdact(
                image: cardItems[index]['image'],
                title: cardItems[index]['titel'],
                hint_title: cardItems[index]['description'],
                price: cardItems[index]['price'],
                weightSize: cardItems[index]['weightSize'],
              );
            },
            separatorBuilder: (BuildContext context, int index) => Divider(
              color: kDarkGrayColor,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: Container(
            height: 50,
            width: double.infinity,
            decoration: BoxDecoration(
                color: kPrimaryColor, borderRadius: BorderRadius.circular(20)),
            child:Builder(builder: (context) { return TextButton(
            child:Text(
                "Go to Chick Out",
                style: TextStyle(
                color: kWhiteColor,
                fontSize: 18,
                fontWeight: FontWeight.bold), ), onPressed: () {
             showBottomSheet(context: context, builder:(BuildContext context) {
               return ShowButton();
             });


            },);},



              ),
            ),


        )]),
    );
  }
}

final List<Map<String, dynamic>> cardItems = [
  {
    "titel": "Organic Banana",
    'description': "12kg,price",
    'image': "banana",
    'price': "\$3.00",
    'weightSize':40.0,
  },
  {
    "titel": "Bell Pepper Red",
    'description': "1kg,price",
    'image': "pepper_red",
    'price': "\$4.99",
    'weightSize':40.0,
  },
  {
    "titel": "Egg Chicken Red",
    'description': "4pcs,price",
    'image': "organic_egg",
    'price': "\$1.99",
    'weightSize':20.0,
  },
  {
    "titel": "Ginger",
    'description': "250gm,price",
    'image': "Ginger",
    'price': "\$2.99",
    'weightSize':85.0,
  },
];
