import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class RoundedRectIconButton extends StatelessWidget {
  RoundedRectIconButton({@required this.iconData, this.onPressed});

  final IconData iconData;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      child: Icon(iconData),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5.0),
      ),
      fillColor: kButtonColor,
      constraints: BoxConstraints.tightFor(
        width: 40.0,
        height: 40.0,
      ),
    );
  }
}
