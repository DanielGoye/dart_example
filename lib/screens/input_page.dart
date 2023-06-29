import 'package:bmi_calculator/screens/result_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:bmi_calculator/components/icon_content.dart';
import 'package:bmi_calculator/constants/constants.dart';
import 'package:bmi_calculator/components/age_weight_content.dart';
import 'package:bmi_calculator/widgets/main_flat_button.dart';
import 'package:bmi_calculator/utilities/calculator_brain.dart';

enum Gender { male, female, notSelected }

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender gender = Gender.notSelected;
  int height = 180;
  int weight = 60;
  int age = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('BMI CALCULATOR'), centerTitle: true),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                      color: gender == Gender.male
                          ? kActiveCardColor
                          : kInactiveCardColor,
                      cardChild: const IconContent(
                          cardText: 'MALE', iconData: FontAwesomeIcons.mars),
                      onPressed: () {
                        setState(() {
                          gender = Gender.male;
                        });
                      }),
                ),
                Expanded(
                  child: ReusableCard(
                      color: gender == Gender.female
                          ? kActiveCardColor
                          : kInactiveCardColor,
                      cardChild: const IconContent(
                          cardText: 'FEMALE', iconData: FontAwesomeIcons.venus),
                      onPressed: () {
                        setState(() {
                          gender = Gender.female;
                        });
                      }),
                )
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              color: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("HEIGHT", style: kLabelStyle),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(height.toString(), style: kNumberTextStyle),
                        const Text('cm')
                      ]),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      thumbShape:
                          const RoundSliderThumbShape(enabledThumbRadius: 15),
                      overlayShape:
                          const RoundSliderOverlayShape(overlayRadius: 30),
                      thumbColor: const Color(0xFFEB1555),
                      activeTrackColor: Colors.white,
                      overlayColor: const Color(0x29EB1555),
                      inactiveTrackColor: const Color(0xFF8D8E98),
                    ),
                    child: Slider(
                        value: height.toDouble(),
                        min: 120,
                        max: 220,
                        onChanged: (double value) {
                          setState(() {
                            height = value.toInt();
                          });
                        }),
                  )
                ],
              ),
              onPressed: () {},
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                      color: kActiveCardColor,
                      cardChild: AgeWeightContent(
                        label: "WEIGHT",
                        value: weight,
                        valueLabel: 'kg',
                        onSubtract: () {
                          setState(() {
                            weight--;
                          });
                        },
                        onAdd: () {
                          setState(() {
                            weight++;
                          });
                        },
                      ),
                      onPressed: () {}),
                ),
                Expanded(
                  child: ReusableCard(
                      color: kActiveCardColor,
                      cardChild: AgeWeightContent(
                        label: "AGE",
                        value: age,
                        valueLabel: "yrs",
                        onSubtract: () {
                          setState(() {
                            age--;
                          });
                        },
                        onAdd: () {
                          setState(() {
                            age++;
                          });
                        },
                      ),
                      onPressed: () {}),
                )
              ],
            ),
          ),
          MainFlatButton(
            onPressed: () {
              CalculatorBrain calculate =
                  CalculatorBrain(weight: weight, height: height);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ResultPage(
                    bmiText: calculate.getResults(),
                    bmi: calculate.bmiString(),
                    bmiInterpretation: calculate.getInterpretation(),
                  ),
                ),
              );
            },
            text: "CALCULATE",
          ),
        ],
      ),
    );
  }
}
