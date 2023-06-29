import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants/constants.dart';

class IconContent extends StatelessWidget {
  final String cardText;
  final IconData iconData;

  const IconContent({
    super.key,
    required this.cardText,
    required this.iconData,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          iconData,
          size: 80,
        ),
        const SizedBox(
          height: 15,
        ),
        Text(
          cardText,
          style: kLabelStyle,
        ),
      ],
    );
  }
}
