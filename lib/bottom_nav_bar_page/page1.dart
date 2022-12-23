
import 'package:flutter/material.dart';
import 'package:food_app_2/colors/my_color.dart';
import 'package:food_app_2/reusable/reusable_card.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:food_app_2/screens/cart_details_main_page.dart';
import 'package:food_app_2/screens/details_product_main_page.dart';
import 'package:food_app_2/screens/resto_details_main_page.dart';

class Page1 extends StatefulWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  List<Map> myList = [
    {'imgUrl': 'images/img1.png', 'category': 'Sweet', 'item': '12'},
    {'imgUrl': 'images/img2.png', 'category': 'Beverage', 'item': '42'},
    {'imgUrl': 'images/img3.png', 'category': 'Snack', 'item': '20'},
    {'imgUrl': 'images/img1.png', 'category': 'Sweet', 'item': '12'},
    {'imgUrl': 'images/img2.png', 'category': 'Beverage', 'item': '42'},
    {'imgUrl': 'images/img3.png', 'category': 'Snack', 'item': '20'},
  ];

  List<Map> myList2 = [
    {
      'imgUrl': 'images/img2.png',
      'name': 'Ice Cream Yummiii !!',
      'category': 'Ice Cream',
      'location': 'Dhaka shop',
      'price': '\$ 5.99'
    },
    {
      'imgUrl': 'images/img4.png',
      'name': 'Sponge Cake',
      'category': 'Sweet Cake',
      'location': 'Dhaka shop',
      'price': '\$ 12.20'
    },
    {
      'imgUrl': 'images/img3.png',
      'name': 'Sweety Donut',
      'category': 'Sweet Cake',
      'location': 'Dhaka shop',
      'price': '\$ 20.99'
    },
    {
      'imgUrl': 'images/img1.png',
      'name': 'Sweety Donut',
      'category': 'Sweet Cake',
      'location': 'Dhaka shop',
      'price': '\$ 10.10'
    },
    {
      'imgUrl': 'images/img2.png',
      'name': 'Ice Cream Yummiii !!',
      'category': 'Ice Cream',
      'location': 'Dhaka shop',
      'price': '\$ 5.99'
    },
  ];

  List<Map> myList3 = [
    {'imgUrl': 'images/img9.png', 'HotelName': 'Jewicenter Resto', 'location': 'Dhaka', 'km':'1.5 km'},
    {'imgUrl': 'images/img5.png', 'HotelName': 'Blem Blem Cofee \nShop', 'location': 'Dhaka', 'km':'2.5 km'},
    {'imgUrl': 'images/img6.png', 'HotelName': 'Jewicenter Resto', 'location': 'Dhaka', 'km':'3.5 km'},
    {'imgUrl': 'images/img7.png', 'HotelName': 'Snack', 'location': 'Dhaka', 'km':'1.8 km'},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldClr,
      body: SafeArea(
          child: Container(
        child: Column(
          children: [
            Expanded(
                flex: 4,
                child: Container(
                  color: whiteClr,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'What do you want to\neat today?',
                              style: myStyle(24, FontWeight.bold, textClr),
                            ),
                            Container(
                              padding: EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: scaffoldClr.withOpacity(0.5),
                                      spreadRadius: 5,
                                      blurRadius: 5,
                                      offset: Offset(
                                          0, 3), // changes position of shadow
                                    ),
                                  ],
                                  borderRadius: BorderRadius.circular(8),
                                  color: whiteClr),
                              child: Icon(Icons.search),
                            )
                          ],
                        ),
                      ),
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.only(left: 15, bottom: 20),
                          width: double.infinity,
                          child: ListView.separated(
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) => GestureDetector(
                                onTap: (){
                                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>DetailsProductMainPage()));
                                },
                                child: Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.38,
                                      child: Column(
                                        children: [
                                          Expanded(
                                            flex: 10,
                                            child: Container(
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(15),
                                                  image: DecorationImage(
                                                    image: AssetImage(
                                                        myList[index]['imgUrl']),
                                                    fit: BoxFit.cover,
                                                  )),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                myList[index]['category'],
                                                style: myStyle(12,
                                                    FontWeight.normal, textClr),
                                              ),
                                              Text(
                                                ' - ${myList[index]['item']} item',
                                                style: myStyle(
                                                    12, FontWeight.bold, textClr),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                              ),
                              separatorBuilder: (context, index) => SizedBox(
                                    width: 8,
                                  ),
                              itemCount: myList.length),
                        ),
                      )
                    ],
                  ),
                )),
            Expanded(
                flex: 6,
                child: Container(
                  padding: EdgeInsets.fromLTRB(15,15,15,0),
                  height: double.infinity,
                  width: double.infinity,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 42,
                              width: 42,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: pinkClr),
                              child: Icon(
                                Icons.favorite,
                                color: whiteClr,
                              ),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Popular',
                                  style: myStyle(16, FontWeight.bold, textClr),
                                ),
                                Text(
                                  'Let\'s choose, and enjoy the food',
                                  style:
                                      myStyle(12, FontWeight.normal, textClr),
                                ),
                              ],
                            ),
                            Spacer(),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.arrow_forward,
                                  color: textClr,
                                ))
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Flexible(
                          child: ListView.separated(
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              itemBuilder: (context, index) => GestureDetector(
                                onTap: (){
                                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>CartDetailsMainPage()));
                                },
                                child: Container(
                                      padding: EdgeInsets.all(8),
                                      width: double.infinity,
                                      height: 100,
                                      decoration: BoxDecoration(
                                          boxShadow: [
                                            BoxShadow(
                                              color: textClr2.withOpacity(0.2),
                                              spreadRadius: 3,
                                              blurRadius: 3,
                                              offset: Offset(0,
                                                  3), // changes position of shadow
                                            ),
                                          ],
                                          borderRadius: BorderRadius.circular(15),
                                          color: whiteClr),
                                      child: Row(
                                        children: [
                                          Expanded(
                                              flex: 4,
                                              child: Container(
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(10),
                                                    image: DecorationImage(
                                                        image: AssetImage(
                                                            myList2[index]
                                                                ['imgUrl']),
                                                        fit: BoxFit.cover)),
                                              )),
                                          SizedBox(
                                            width: 12,
                                          ),
                                          Expanded(
                                              flex: 10,
                                              child: Container(
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      myList2[index]['name'],
                                                      style: myStyle(
                                                          16,
                                                          FontWeight.bold,
                                                          textClr),
                                                    ),
                                                    SizedBox(
                                                      height: 5,
                                                    ),
                                                    Container(
                                                      padding:
                                                          EdgeInsets.symmetric(
                                                              vertical: 5,
                                                              horizontal: 10),
                                                      decoration: BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(30),
                                                          color: blueClr
                                                              .withOpacity(0.2)),
                                                      child: Text(
                                                        myList2[index]
                                                            ['category'],
                                                        style: myStyle(
                                                            10,
                                                            FontWeight.normal,
                                                            blueClr),
                                                      ),
                                                    ),
                                                    Spacer(),
                                                    Row(
                                                      children: [
                                                        Icon(
                                                          Icons.location_on,
                                                          color: pinkClr,
                                                          size: 14,
                                                        ),
                                                        Text(
                                                          ' ${myList2[index]['location']}',
                                                          style: myStyle(
                                                              12,
                                                              FontWeight.normal,
                                                              textClr2),
                                                        ),
                                                        Spacer(),
                                                        Text(
                                                          myList2[index]['price'],
                                                          style: myStyle(
                                                              12,
                                                              FontWeight.bold,
                                                              textClr),
                                                        ),
                                                      ],
                                                    )
                                                  ],
                                                ),
                                              )),
                                        ],
                                      ),
                                    ),
                              ),
                              separatorBuilder: (context, index) => SizedBox(
                                    height: 15,
                                  ),
                              itemCount: myList2.length),
                        ),

                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 15.0),
                          child: Row(
                            children: [
                              Container(
                                height: 42,
                                width: 42,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: blueClr),
                                child: Icon(
                                  Icons.location_on,
                                  color: whiteClr,
                                ),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Near you',
                                    style: myStyle(16, FontWeight.bold, textClr),
                                  ),
                                  Text(
                                    'Dhaka, Bangladesh',
                                    style:
                                        myStyle(12, FontWeight.normal, textClr),
                                  ),
                                ],
                              ),
                              Spacer(),
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.arrow_forward,
                                    color: textClr,
                                  ))
                            ],
                          ),
                        ),

                        Flexible(child: MasonryGridView.count(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          crossAxisCount: 2,
                          mainAxisSpacing: 10,
                          crossAxisSpacing: 10,
                          itemCount: myList3.length,
                          itemBuilder: (context,index)=>GestureDetector(
                            onTap: (){
                              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>RestoDetailsMainPage()));
                            },
                            child: Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: whiteClr
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 128,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      image: DecorationImage(image: AssetImage(myList3[index]['imgUrl']), fit: BoxFit.cover)
                                    ),
                                  ),
                                  SizedBox(height: 7,),
                                  Text(myList3[index]['HotelName'], style: myStyle(14, FontWeight.bold, textClr),),
                                  SizedBox(height: 3,),
                                  Text(myList3[index]['location'], style: myStyle(12, FontWeight.normal, textClr2),),
                                  SizedBox(height: 10,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(myList3[index]['km'],  style: myStyle(12, FontWeight.normal, blueClr),),
                                      Icon(Icons.arrow_forward, color: blueClr, size: 14,)
                                    ],
                                  )
                                ],
                              ),
                            ),
                          )
                        ))
                      ],
                    ),
                  ),
                )),
          ],
        ),
      )),
    );
  }
}
