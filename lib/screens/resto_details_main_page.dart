import 'package:flutter/material.dart';
import 'package:food_app_2/colors/my_color.dart';
import 'package:food_app_2/reusable/reusable_card.dart';

class RestoDetailsMainPage extends StatefulWidget {
  const RestoDetailsMainPage({Key? key}) : super(key: key);

  @override
  State<RestoDetailsMainPage> createState() => _RestoDetailsMainPageState();
}

class _RestoDetailsMainPageState extends State<RestoDetailsMainPage> {
  var selectedButton = 0;
  var selectedIcon=0;
  List<String> myList = [
    'Ice Creams',
    'Snaks',
    'Coffee',
    'Sweet Cakes',
    'Ice Creams',
    'Snaks',
    'Coffee',
    'Sweet Cakes'
  ];

  List<Map> myList1 = [
    {
      'imgUrl': 'images/img2.png',
      'name': 'Ice Cream Yellow',
      'price': '\$ 5,99',
      'discountPrice': '\$ 5,99'
    },
    {
      'imgUrl': 'images/img12.png',
      'name': 'Pink Ice',
      'price': '\$ 12,99',
      'discountPrice': '\$ 5,99'
    },
    {
      'imgUrl': 'images/img11.png',
      'name': 'Blue Ice',
      'price': '\$ 5,99',
      'discountPrice': '\$ 5,99'
    },
    {
      'imgUrl': 'images/img2.png',
      'name': 'Ice Cream Yellow',
      'price': '\$ 5,99',
      'discountPrice': '\$ 5,99'
    },
    {
      'imgUrl': 'images/img12.png',
      'name': 'Pink Ice',
      'price': '\$ 12,99',
      'discountPrice': '\$ 5,99'
    },
    {
      'imgUrl': 'images/img11.png',
      'name': 'Blue Ice',
      'price': '\$ 5,99',
      'discountPrice': '\$ 5,99'
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteClr,
      appBar: AppBar(
        backgroundColor: whiteClr,
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: textClr,
              size: 22,
            )),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisSize: MainAxisSize.min,

            children: [
             Container(
               padding: EdgeInsets.fromLTRB(15,0,15,15),
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
               Container(
                 height: MediaQuery.of(context).size.height * .40,
                 width: double.infinity,
                 decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(15),
                     image: DecorationImage(image: AssetImage('images/img9.png'), fit: BoxFit.cover)),
               ),
               SizedBox(
                 height: 10,
               ),
               Row(
                 children: [
                   Text(
                     'Angkringan Resto',
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
               Text(
                 'Jawi, Pasuruan',
                 style: myStyle(14, FontWeight.normal, textClr2),
               ),
               SizedBox(
                 height: 10,
               ),
               Container(
                 padding: EdgeInsets.all(10),
                 height: 58,
                 width: double.infinity,
                 decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(5), color: scaffoldClr),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         Text(
                           'Check the reward in this resto',
                           style: myStyle(14, FontWeight.normal, textClr),
                         ),
                         Text(
                           '16 Reward',
                           style: myStyle(12, FontWeight.bold, blueClr),
                         )
                       ],
                     ),
                     Icon(
                       Icons.arrow_forward_ios,
                       color: textClr,
                       size: 22,
                     ),
                   ],
                 ),
               ),
               SizedBox(height: 10,),
               Container(
                 height: 40,
                 width: double.infinity,
                 child: ListView.separated(
                     scrollDirection: Axis.horizontal,
                     itemBuilder: (context, index) => GestureDetector(
                       onTap: () {
                         setState(() {
                           selectedButton = index;
                         });
                       },
                       child: Container(
                         alignment: Alignment.center,
                         padding: EdgeInsets.symmetric(
                           horizontal: 20,
                         ),
                         decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(30),
                             color: selectedButton == index ? blueClr : scaffoldClr),
                         child: Text(
                           myList[index],
                           style: myStyle(14, FontWeight.normal,
                               selectedButton == index ? whiteClr : textClr),
                         ),
                       ),
                     ),
                     separatorBuilder: (context, index) => SizedBox(
                       width: 10,
                     ),
                     itemCount: myList.length),
               ),
             ],),),
              Flexible(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    color: scaffoldClr,
                    child: ListView.separated(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemBuilder: (context, index) => Container(
                          padding: EdgeInsets.all(5),
                          width: double.infinity,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: whiteClr),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                height: 52,
                                width: 52,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    image: DecorationImage(
                                        image:
                                        AssetImage(myList1[index]['imgUrl']),
                                        fit: BoxFit.cover)),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    myList1[index]['name'],
                                    style:
                                    myStyle(16, FontWeight.bold, textClr),
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        myList1[index]['discountPrice'],
                                        style:
                                        myStyle(14, FontWeight.normal, textClr),
                                      ),
                                      SizedBox(width: 5,),
                                      Text(
                                        myList1[index]['price'],
                                        style:
                                        myStyle(14, FontWeight.normal, blueClr),
                                      )
                                    ],
                                  )

                                ],
                              ),
                              Spacer(),
                              IconButton(
                                  onPressed: () {
                                    setState(() {
                                      selectedIcon=index;
                                    });
                                  },
                                  icon: selectedIcon==index?Icon(
                                    Icons.favorite,
                                    size: 14,
                                    color: pinkClr,
                                  ):Icon(Icons.favorite_border, size: 14, color: textClr2,))
                            ],
                          ),
                        ),
                        separatorBuilder: (context, index) => SizedBox(
                          height: 10,
                        ),
                        itemCount: myList1.length),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
