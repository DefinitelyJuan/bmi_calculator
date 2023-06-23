import 'package:flutter/material.dart';

class SquareRoundButton extends StatelessWidget {
  const SquareRoundButton({Key? key , required this.icon, required this.onPressed}) : super(key: key);

  final IconData icon;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      elevation: 0,
      child: Icon(icon),
      onPressed: onPressed,
      constraints: BoxConstraints.tightFor(
        height: 56,
        width: 56
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10)
      ),
      fillColor: Color(0XFF4C4F5E),
    );
  }
}
