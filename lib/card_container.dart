import 'package:flutter/material.dart';

class CardContainer extends StatelessWidget {
  CardContainer({
    Key? key, required this.color, required this.cardChild, required this.onPress
  }) : super(key: key);
  Color color;
  Widget cardChild;
  final void Function() onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        child: cardChild,
        height: 200.0,
        width: 170,
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: color
        ),
      ),
      onTap: onPress,
    );
  }
}