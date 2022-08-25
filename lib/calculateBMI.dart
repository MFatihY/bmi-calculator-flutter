import 'dart:math';
import 'package:flutter/foundation.dart';

Map<String, dynamic> calculateBMI({@required height, @required weight}) {
  double bmiPoint = weight / pow(height / 100, 2);
  Map<String, dynamic> result = {
    "point": bmiPoint,
    "shortResult": "",
    "explanation": "",
  };

  if (bmiPoint >= 25) {
    result["shortResult"] = "Overweight";
    result["explanation"] = "Your BMI is higher than normal. You need to exercise more.";
  } else if (bmiPoint >= 18.5) {
    result["shortResult"] = "Normal";
    result["explanation"] = "Your BMI looks pretty good. Congrats!";
  } else {
    result["shortResult"] = "Underweight";
    result["explanation"] = "Your BMI is less than normal. You need to eat more.";
  }
  return result;
}
