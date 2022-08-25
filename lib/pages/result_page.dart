import 'package:bmi_calculator/components/bottom_button.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/components/my_card.dart';

class ResultPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic> result = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: AppBar(
        title: Text("BMI Calculator"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.centerLeft,
              child: Text(
                "Your BMI Result:",
                style: kResultTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: MyCard(
              color: kInactiveCardColor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    result["shortResult"],
                    style: kResultShortTextStyle,
                  ),
                  Text(
                    result["point"].toStringAsFixed(1),
                    style: kResultPointTextStyle,
                  ),
                  Text(
                    result["explanation"],
                    style: kResultExplanationTextStyle,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: BottomButton(
              onTap: () {
                Navigator.pop(context);
              },
              text: "GO BACK",
            ),
          ),
        ],
      ),
    );
  }
}
