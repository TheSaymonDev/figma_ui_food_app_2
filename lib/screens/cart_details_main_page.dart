import 'package:flutter/material.dart';
import 'package:food_app_2/colors/my_color.dart';
import 'package:food_app_2/reusable/reusable_card.dart';

class CartDetailsMainPage extends StatefulWidget {
  const CartDetailsMainPage({Key? key}) : super(key: key);

  @override
  State<CartDetailsMainPage> createState() => _CartDetailsMainPageState();
}

class _CartDetailsMainPageState extends State<CartDetailsMainPage> {

  List<Map> myList4=[
    {'imgUrl':'images/img2.png', 'name':'Special Ice Cream \nYellow', 'price':'\$ 5,99'},
    {'imgUrl':'images/img12.png', 'name':'Blue Ice Cream', 'price':'\$ 12,99'},
    {'imgUrl':'images/img11.png', 'name':'Special Ice Cream \nYellow', 'price':'\$ 5,99'},
    {'imgUrl':'images/img2.png', 'name':'Blue Ice Cream', 'price':'\$ 5,99'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteClr,
      body: SafeArea(
        child: Container(
          height: double.infinity,
          width: double.infinity,

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             Container(
               padding: EdgeInsets.all(15),
               child: Column(
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
                             'Your cart is ready to go',
                             style: myStyle(16, FontWeight.bold, textClr),
                           ),
                           Text(
                             '4 menu',
                             style: myStyle(12, FontWeight.normal, blueClr),
                           ),
                         ],
                       ),
                     ],
                   ),
                   Container(
                     padding: EdgeInsets.all(8),
                     margin: EdgeInsets.symmetric(vertical: 10),
                     height: MediaQuery.of(context).size.height * .13,
                     width: double.infinity,
                     decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(15),
                         border: Border.all(width: 1, color: Color(0xffDEDEDE)),
                         color: whiteClr),
                     child: Column(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                         Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: [
                             Text(
                               'Send to',
                               style: myStyle(12, FontWeight.normal, textClr2),
                             ),
                             Icon(
                               Icons.arrow_forward_ios,
                               size: 12,
                               color: blueClr,
                             ),
                           ],
                         ),
                         Row(
                           children: [
                             Container(
                               height: 52,
                               width: 52,
                               decoration: BoxDecoration(
                                   borderRadius: BorderRadius.circular(5),
                                   image: DecorationImage(
                                       image: AssetImage('images/img10.png'))),
                             ),
                             SizedBox(
                               width: 15,
                             ),
                             Text(
                               '242nd St Tonganoxie, Kansas\n(KS), 66086',
                               style: myStyle(14, FontWeight.bold, textClr),
                             )
                           ],
                         )
                       ],
                     ),
                   ),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Text(
                         'Your Orders',
                         style: myStyle(16, FontWeight.bold, textClr),
                       ),
                       Icon(
                         Icons.add,
                         color: blueClr,
                         size: 25,
                       )
                     ],
                   ),
                 ],
               ),
             ),
              Expanded(child: Container(
                padding: EdgeInsets.symmetric(horizontal: 15),
                height: double.infinity,
                width: double.infinity,
                child: ListView.separated(itemBuilder: (context, index)=>Container(
                  padding: EdgeInsets.all(10),
                  width: double.infinity,
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
                    borderRadius: BorderRadius.circular(10),
                    color: whiteClr
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 15,
                            width: 15,
                            decoration: BoxDecoration(
                              border: Border.all(color: scaffoldClr3, width: 1)
                            ),
                            child: Text('10', style: myStyle(10, FontWeight.normal, textClr),),
                          ),
                          SizedBox(width: 5,),
                          Container(
                            height: 52,
                            width: 52,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              image: DecorationImage(image: AssetImage(myList4[index]['imgUrl']), fit: BoxFit.cover)
                            ),
                          ),
                          SizedBox(width: 8,),
                          Text(myList4[index]['name'], style: myStyle(16, FontWeight.bold, textClr),),
                          Spacer(),
                          Text(myList4[index]['price'], style: myStyle(14, FontWeight.normal, textClr),)
                        ],
                      ),
                      TextButton(onPressed: (){}, child: Text('Edit', style: myStyle(12, FontWeight.normal, blueClr),))
                    ],
                  ),
                ),
                    separatorBuilder: (context, index)=>SizedBox(height: 15,),
                    itemCount: myList4.length),
              )),
              Container(
                padding: EdgeInsets.all(15),
                width: double.infinity,
                color: scaffoldClr,
                child: Column(
                  children: [
                    Align(
                        alignment: Alignment.topRight,
                        child: Text(
                          'Delivery Fee \$ 4,00',
                          style: myStyle(12, FontWeight.normal, textClr),
                        )),
                    SizedBox(height: 5,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Total Cost',
                          style: myStyle(16, FontWeight.bold, textClr),
                        ),
                        Text(
                          '\$ 36,00',
                          style: myStyle(16, FontWeight.bold, blueClr),
                        ),
                      ],
                    ),
                    SizedBox(height: 20,),
                    MaterialButton(
                      height: 50,
                      minWidth: double.infinity,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                      onPressed: () {},
                      color: blueClr,
                      child: Text(
                        'Continue Pay - \$36,00',
                        style: myStyle(16, FontWeight.bold, whiteClr),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
