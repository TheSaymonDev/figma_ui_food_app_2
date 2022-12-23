import 'package:flutter/material.dart';
import 'package:food_app_2/colors/my_color.dart';

class Page2 extends StatefulWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: scaffoldClr,
      body: Center(
        child: Text('Category Page'),
      ),
    );
  }
}
