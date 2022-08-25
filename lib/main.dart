import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';
import 'pages/input_page.dart';
import 'pages/result_page.dart';
import 'constants.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
          primaryColor: Color(0xFF335545),
          accentColor: Color(0xD0DDDD22),
          scaffoldBackgroundColor: Color(0xFF335545),
          sliderTheme: SliderTheme.of(context).copyWith(
              activeTrackColor: Colors.white,
              inactiveTrackColor: Colors.grey[600],
              thumbColor: kSliderThumbColor,
              thumbShape: RoundSliderThumbShape(
                enabledThumbRadius: 15.0,
              ))),
      initialRoute: "/",
      routes: {
        "/": (BuildContext context) => InputPage(),
        "/result": (BuildContext context) => ResultPage(),
      },
    );
  }
}
