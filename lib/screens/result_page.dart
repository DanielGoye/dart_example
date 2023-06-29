import 'package:bmi_calculator/constants/constants.dart';
import 'package:bmi_calculator/widgets/main_flat_button.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({super.key});

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
                      const Text(
                        "OVERWEIGHT",
                        style: TextStyle(
                            color: Colors.green,
                            fontWeight: FontWeight.bold,
                            fontSize: 24),
                      ),
                      Text(
                        "28.4",
                        style: kNumberTextStyle.copyWith(fontSize: 70),
                      ),
                      const Text(
                        "You have a higher than normal body weight. Try to exercise more",
                        style: TextStyle(fontSize: 20),
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
