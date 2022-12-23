import 'package:flutter/material.dart';
import 'package:food_app_2/screens/cart_details_main_page.dart';
import 'package:food_app_2/screens/details_product_main_page.dart';
import 'package:food_app_2/screens/home_page.dart';
import 'package:food_app_2/screens/resto_details_main_page.dart';

void main(){
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
