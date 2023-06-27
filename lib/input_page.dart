import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi_calculator/reusable_card.dart';
import 'package:bmi_calculator/icon_content.dart';
import 'package:bmi_calculator/constants.dart';

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
          Container(
            color: kButtonColor,
            width: double.infinity,
            height: 80,
          )
        ],
      ),
    );
  }
}

class RoundIconButton extends StatelessWidget {
  final VoidCallback onPressed;
  final Widget child;
  const RoundIconButton(
      {super.key, required this.onPressed, required this.child});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      shape: const CircleBorder(),
      fillColor: const Color(0xFF4c4f5e),
      constraints: const BoxConstraints.tightFor(width: 56, height: 56),
      elevation: 6,
      child: child,
    );
  }
}

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
