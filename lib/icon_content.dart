import 'package:flutter/material.dart';

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
          style: const TextStyle(
            fontSize: 18,
            color: Color(0xFF8D8E98),
          ),
        )
      ],
    );
  }
}
