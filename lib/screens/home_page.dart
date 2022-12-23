import 'package:flutter/material.dart';
import 'package:food_app_2/colors/my_color.dart';
import 'package:food_app_2/bottom_nav_bar_page/page1.dart';
import 'package:food_app_2/bottom_nav_bar_page/page2.dart';
import 'package:food_app_2/bottom_nav_bar_page/page3.dart';
import 'package:food_app_2/bottom_nav_bar_page/page4.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int pageIndex = 0;
  List <Widget> pages = [Page1(),Page2(),Page3(),Page4()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          pages.elementAt(pageIndex),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: BottomNavigationBar(
                  items: [
                  BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: 'Home'),
                  BottomNavigationBarItem(icon: Icon(Icons.file_copy_outlined), label: 'Category'),
                  BottomNavigationBarItem(icon: Icon(Icons.notification_add_outlined), label: 'Notification'),
                  BottomNavigationBarItem(icon: Icon(Icons.person_outline), label: 'Profile')
                ],
                  selectedItemColor: blueClr,
                  unselectedItemColor: textClr2,
                  showSelectedLabels: true,
                  showUnselectedLabels: false,
                  currentIndex: pageIndex,
                  backgroundColor: whiteClr,
                  type: BottomNavigationBarType.fixed,
                  onTap: (int index){
                    setState(() {
                      pageIndex=index;
                    });
                  },
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
