import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi_calculator/components/my_card.dart';
import 'package:bmi_calculator/components/rounded_rect_icon_button.dart';
import '../components/gender_large.dart';
import 'package:bmi_calculator/components/bottom_button.dart';
import '../constants.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender activeGender;
  int height = 175;
  int weight = 70;
  int age = 25;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: MyCard(
                    onTap: () {
                      setState(() {
                        if (activeGender != Gender.male)
                          activeGender = Gender.male;
                        else
                          activeGender = null;
                      });
                    },
                    color: activeGender == Gender.male ? kActiveCardColor : kInactiveCardColor,
                    child: GenderLarge(
                      gender: Gender.male,
                    ),
                  ),
                ),
                Expanded(
                  child: MyCard(
                    onTap: () {
                      setState(() {
                        if (activeGender != Gender.female)
                          activeGender = Gender.female;
                        else
                          activeGender = null;
                      });
                    },
                    color: activeGender == Gender.female ? kActiveCardColor : kInactiveCardColor,
                    child: GenderLarge(
                      gender: Gender.female,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: MyCard(
              color: kInactiveCardColor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Height",
                    style: kLabelTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        height.toString(),
                        style: kNumberTextStyle,
                      ),
                      Text("cm"),
                    ],
                  ),
                  Slider(
                    min: 60,
                    max: 250,
                    value: height.toDouble(),
                    onChanged: (double newHeight) {
                      setState(() {
                        height = newHeight.round();
                      });
                    },
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: MyCard(
                    color: kInactiveCardColor,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Weight",
                          style: kLabelTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text(
                              weight.toString(),
                              style: kNumberTextStyle,
                            ),
                            Text("kg"),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundedRectIconButton(
                              iconData: FontAwesomeIcons.minus,
                              onPressed: () {
                                setState(() {
                                  weight--;
                                });
                              },
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            RoundedRectIconButton(
                              iconData: FontAwesomeIcons.plus,
                              onPressed: () {
                                setState(() {
                                  weight++;
                                });
                              },
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: MyCard(
                    color: kInactiveCardColor,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Age",
                          style: kLabelTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text(
                              age.toString(),
                              style: kNumberTextStyle,
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundedRectIconButton(
                              iconData: FontAwesomeIcons.minus,
                              onPressed: () {
                                setState(() {
                                  age--;
                                });
                              },
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            RoundedRectIconButton(
                              iconData: FontAwesomeIcons.plus,
                              onPressed: () {
                                setState(() {
                                  age++;
                                });
                              },
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          BottomButton(
            text: "CALCULATE",
            onTap: () {
              Navigator.pushNamed(context, "/result");
            },
          ),
        ],
      ),
    );
  }
}
