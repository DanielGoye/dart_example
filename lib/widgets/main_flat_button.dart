import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants/constants.dart';

class MainFlatButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  const MainFlatButton({
    super.key,
    required this.onPressed,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        color: kButtonColor,
        width: double.infinity,
        height: 80,
        padding: const EdgeInsets.only(bottom: 15),
        child: Center(
          child: Text(
            text,
            style: kLargeButtonTextStyle,
          ),
        ),
      ),
    );
  }
}
