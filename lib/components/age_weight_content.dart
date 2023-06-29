import 'package:flutter/material.dart';
import 'package:bmi_calculator/widgets/round_icon_button.dart';
import 'package:bmi_calculator/constants/constants.dart';

class AgeWeightContent extends StatelessWidget {
  final String label;
  final int value;
  final String valueLabel;
  final VoidCallback onSubtract;
  final VoidCallback onAdd;

  const AgeWeightContent(
      {super.key,
      required this.label,
      required this.value,
      required this.onSubtract,
      required this.onAdd,
      required this.valueLabel});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          label,
          style: kLabelStyle,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.baseline,
          textBaseline: TextBaseline.alphabetic,
          children: [
            Text(
              value.toString(),
              style: kNumberTextStyle,
            ),
            Text(valueLabel),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RoundIconButton(
              onPressed: onSubtract,
              child: const Icon(Icons.remove, color: Colors.white),
            ),
            const SizedBox(width: 10),
            RoundIconButton(
              onPressed: onAdd,
              child: const Icon(Icons.add, color: Colors.white),
            ),
          ],
        )
      ],
    );
  }
}
