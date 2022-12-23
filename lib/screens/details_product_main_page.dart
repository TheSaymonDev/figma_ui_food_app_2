import 'package:flutter/material.dart';
import 'package:food_app_2/colors/my_color.dart';
import 'package:food_app_2/reusable/reusable_card.dart';

class DetailsProductMainPage extends StatefulWidget {
  const DetailsProductMainPage({Key? key}) : super(key: key);

  @override
  State<DetailsProductMainPage> createState() => _DetailsProductMainPageState();
}

class _DetailsProductMainPageState extends State<DetailsProductMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteClr,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(15),
          height: double.infinity,
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: Icon(
                        Icons.arrow_back_ios,
                        color: textClr,
                        size: 22,
                      )),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Ankringran Resto',
                        style: myStyle(16, FontWeight.bold, textClr),
                      ),
                      Text(
                        'Go to resturant',
                        style: myStyle(12, FontWeight.normal, blueClr),
                      ),
                    ],
                  ),
                  Spacer(),
                  Stack(
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.add_shopping_cart,
                            color: textClr,
                            size: 25,
                          )),
                      Positioned(
                          top: 3,
                          right: 5,
                          child: Container(
                            padding: EdgeInsets.all(3),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle, color: pinkClr),
                            child: Text(
                              '1',
                              style: myStyle(10, FontWeight.normal, whiteClr),
                            ),
                          ))
                    ],
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.favorite_border,
                        color: textClr,
                        size: 25,
                      )),
                ],
              ),
              Expanded(
                  child: Container(
                margin: EdgeInsets.symmetric(vertical: 15),
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: AssetImage('images/img2.png'), fit: BoxFit.cover)),
              )),
              Row(
                children: [
                  Text(
                    'Yellow Ice Cream',
                    style: myStyle(24, FontWeight.bold, textClr),
                  ),
                  Spacer(),
                  Icon(
                    Icons.star,
                    color: pinkClr,
                    size: 14,
                  ),
                  Icon(
                    Icons.star,
                    color: pinkClr,
                    size: 14,
                  ),
                  Icon(
                    Icons.star,
                    color: scaffoldClr2,
                    size: 14,
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                '\$ 12.99',
                style: myStyle(14, FontWeight.bold, greenClr),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'fhdhdhhd fddhgdhghg gksgkgj gsgkg gsjgkjg ggjgj gfjjhgfdjh ghfdmhhfdjgjgjfjg gfgkgnng gngfngnfng gfgfgnn gfngfngng gfdngngn gfngfng gfdngfdng',
                style: myStyle(14, FontWeight.normal, textClr2),
                maxLines: 3,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15.0),
                child: Container(
                  alignment: Alignment.center,
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: scaffoldClr3),
                  child: Text(
                    'leave a note for the resturant',
                    style: myStyle(14, FontWeight.normal, textClr2),
                  ),
                ),
              ),
              Row(
                children: [
                  Container(
                    alignment: Alignment.center,
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('images/circle.png'),
                            fit: BoxFit.cover)),
                    child: Text(
                      '-',
                      style: myStyle(22, FontWeight.bold, textClr2),
                    ),
                  ),
                  Container(
                      alignment: Alignment.center,
                      height: 50,
                      width: 50,
                      child: Text('28',
                          style: myStyle(20, FontWeight.bold, textClr))),
                  Container(
                    alignment: Alignment.center,
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('images/circle.png'),
                            fit: BoxFit.cover)),
                    child: Text(
                      '+',
                      style: myStyle(22, FontWeight.bold, textClr2),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: MaterialButton(
                      onPressed: () {},
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                      color: blueClr,
                      height: 50,
                      minWidth: double.infinity,
                      child: Text(
                        'Continue',
                        style: myStyle(16, FontWeight.bold, whiteClr),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
