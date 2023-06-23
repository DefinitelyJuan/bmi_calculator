import 'package:bmi_calculator/screen_arguments.dart';
import 'package:flutter/material.dart';
import 'card_container.dart';
import 'icon_content.dart';
import 'constants.dart';
import 'squaredRoundButton.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'bmi_page.dart';


class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  State<InputPage> createState() => _InputPageState();
}
enum Gender {
  male,
  female
}

class _InputPageState extends State<InputPage> {

  var selectedGender;
  int height = 160;
  int weight = 80;
  int age = 18;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("InputPage"),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CardContainer(
                  color: selectedGender == Gender.male ? kActivatedColor : kInactivatedColor,
                  cardChild: IconContent(iconData: FontAwesomeIcons.mars, text: "MALE"),
                  onPress: (){
                    selectedGender = Gender.male;
                    setState(() {

                    });
                    },
                ),
                CardContainer(
                    color: selectedGender == Gender.female ? kActivatedColor : kInactivatedColor,
                    cardChild: IconContent(iconData: FontAwesomeIcons.venus, text: "FEMALE"),
                    onPress: (){
                      selectedGender = Gender.female;
                      setState(() {

                      });
                    }
                    ),
              ],

            ),
          ),
          Row(
            children: [
              Expanded(
                child: CardContainer(
                    color: kActivatedColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("HEIGHT", style: kTextStyle,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          textBaseline: TextBaseline.alphabetic,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          children: [
                            Text(height.toString(), style: kNumberStyle,),
                            Text("CM", style: kTextStyle,),
                          ],
                        ),
                        SliderTheme(
                          child: Slider(
                            value: height.toDouble(),
                            min: 100.0,
                            max: 220.0,
                            onChanged: (newValue){
                              setState(() {
                                height = newValue.round();
                              });
                           },
                          ),
                          data: SliderTheme.of(context).copyWith(
                            thumbShape: RoundSliderThumbShape(
                              enabledThumbRadius: 15
                            ),
                            overlayShape: RoundSliderOverlayShape(
                              overlayRadius: 30
                            ),
                            overlayColor: Color(0x29E01555),
                            thumbColor: Color(0xFFE01555),
                            activeTrackColor: Colors.white,
                            inactiveTrackColor: Color(0XFF952552),
                          ),
                        ),
                      ],
                    ),
                  onPress: (){},
                ),
              ),
            ],
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CardContainer(
                  color: kActivatedColor,
                  cardChild: Column(
                    children: [
                      Text(
                          "WEIGHT",
                        style: kTextStyle,
                      ),
                      Text(
                          weight.toString(),
                        style: kNumberStyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SquareRoundButton(
                              icon: FontAwesomeIcons.minus,
                              onPressed: (){
                                setState(() {
                                  weight--;
                                  weight < 1 ? weight = 1: weight;
                                });
                              }
                          ),
                          SizedBox(width: 10),
                          SquareRoundButton(
                              icon: FontAwesomeIcons.plus,
                              onPressed: (){
                                setState(() {
                                  weight++;
                                });
                              }
                          )
                        ],
                      )

                    ],

                ),
                  onPress: (){

                  },
                ),
                CardContainer(color: kActivatedColor, cardChild: Column(
                  children: [
                    Text(
                      "AGE",
                      style: kTextStyle,
                    ),
                    Text(
                      age.toString(),
                      style: kNumberStyle,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SquareRoundButton(
                            icon: FontAwesomeIcons.minus,
                            onPressed: (){
                              setState(() {
                                age--;
                                age < 1 ? age = 1: age;
                              });
                            }
                        ),
                        SizedBox(width: 10),
                        SquareRoundButton(
                            icon: FontAwesomeIcons.plus,
                            onPressed: (){
                            setState(() {
                              age++;
                            });
                            }
                        )
                      ],
                    )

                  ],

                ), onPress: (){}),
              ],

            ),
          ),
          GestureDetector(
            child: Container(
              color: Color(0xFFE01555),
              height: 80,
              width: double.infinity,
              margin: EdgeInsets.only(top:10),
              child: Text("Calcular BMI", style: kNumberStyle,textAlign: TextAlign.center,),
            ),
            onTap: (){
              double heightInMeters = height / 100;
              double bmi = weight / (heightInMeters * heightInMeters);

              Navigator.pushNamed(
                  context,
                  "/results",
                  arguments: ScreenArguments(bmi)
              );
            },
          )
        ],
      ),
    );
  }
}

