import 'package:flutter/cupertino.dart';

class ReusableCard extends StatelessWidget {
  final Color? color;
  final Widget? cardChild;
  final Function()? onClick;
  const ReusableCard(
      {this.color, Key? key, this.cardChild, this.onClick})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClick,
      child: Container(
        margin: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: cardChild,
      ),
    );
  }
}

myStyle(double size, FontWeight weight, Color clr){
  return TextStyle(fontSize: size, fontWeight: weight, color: clr);
}