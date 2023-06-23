import 'package:bmi_calculator/card_container.dart';
import 'package:flutter/material.dart';
import 'constants.dart';

class BmiResultPage extends StatelessWidget {
  BmiResultPage({Key? key, required this.bmi}) : super(key: key);

  final double bmi;
  String getStatus(double bmi){

    if(bmi < 18.5){
      return "UNDERWEIGHT";
    }
    else if(bmi < 25) {
      return "NORMAL";
    }
    else if(bmi < 40){
      return "OVERWEIGHT";
    }
    else{
      return "OBESE";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Resultado BMI"),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: CardContainer(
                    color: kActivatedColor,
                    cardChild: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      //crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text("BMI",style: kTextStyle,),
                        Text(bmi.toStringAsFixed(2),style: kNumberStyle,)
                      ],
                    ),
                    onPress: (){}),
              )
            ],
          ),
          Row(
            children: [
              Expanded(
                child: CardContainer(
                    color: kActivatedColor,
                    cardChild: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      //crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(getStatus(bmi),style: kNumberStyle,),
                      ],
                    ),
                    onPress: (){}),
              )
            ],
          )
        ],
      ),
    );
  }
}
