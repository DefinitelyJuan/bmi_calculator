import 'package:flutter/material.dart';
import 'constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class IconContent extends StatelessWidget {
  IconContent({Key? key, required this.text, required this.iconData}) : super(key: key);


  IconData iconData;
  String text;

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            FontAwesomeIcons.mars,
            size: 80,
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            text,
            style: kTextStyle,
          )
        ]
    );
  }
}

