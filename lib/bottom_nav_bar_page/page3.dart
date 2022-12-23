import 'package:flutter/material.dart';
import 'package:food_app_2/colors/my_color.dart';

class Page3 extends StatefulWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: scaffoldClr,
      body: Center(
        child: Text('Notification Page'),
      ),
    );
  }
}
