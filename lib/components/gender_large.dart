import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../constants.dart';

enum Gender { male, female }

class GenderLarge extends StatelessWidget {
  GenderLarge({@required this.gender});

  final Gender gender;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          gender == Gender.male ? FontAwesomeIcons.male : FontAwesomeIcons.female,
          size: 80.0,
        ),
        SizedBox(height: 15.0),
        Text(
          gender == Gender.male ? "Male" : "Female",
          style: kLabelTextStyle,
        )
      ],
    );
  }
}
