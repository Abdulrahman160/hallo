import 'package:flutter/material.dart';
import 'package:hallo/view/my_cart.dart';

void main (){
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
        home: MyCart(),
    );

  }
}
