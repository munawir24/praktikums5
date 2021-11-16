import 'package:flutter/material.dart';
import 'package:bmi_calculator_praktikum_k/constant.dart';

class ButtomButton extends StatelessWidget {
  const ButtomButton({ @required this.buttonText, @required this.onTap});

  final String buttonText;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            buttonText,
            style: kLargeButtonTextStyle,
          )
        ),
        margin: EdgeInsets.only(top:10.0),
        color: kButtomContainerColor,
        height: kButtomContainerHeight,
        width: double.infinity,
        padding: EdgeInsets.only(bottom: 20.0),
        ),
      );
  }
}
