import 'package:bmi_calculator/constants/constants.dart';
import 'package:bmi_calculator/widgets/main_flat_button.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  final String bmiText;
  final String bmi;
  final String bmiInterpretation;

  const ResultPage(
      {super.key,
      required this.bmiText,
      required this.bmi,
      required this.bmiInterpretation});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              alignment: Alignment.bottomLeft,
              padding: const EdgeInsets.fromLTRB(15, 10, 0, 0),
              child: Text(
                "Your Result",
                style: kNumberTextStyle.copyWith(fontSize: 40),
              ),
            ),
            Expanded(
              child: ReusableCard(
                  color: kActiveCardColor,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        bmiText.toUpperCase(),
                        style: const TextStyle(
                            color: Colors.green,
                            fontWeight: FontWeight.bold,
                            fontSize: 24),
                      ),
                      Text(
                        bmi,
                        style: kNumberTextStyle.copyWith(fontSize: 70),
                      ),
                      Text(
                        bmiInterpretation,
                        style: const TextStyle(fontSize: 20),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  onPressed: () {}),
            ),
            MainFlatButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                text: "RE-CALCULATE"),
          ],
        ),
      ),
    );
  }
}
