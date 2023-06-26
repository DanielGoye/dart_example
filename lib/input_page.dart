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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('BMI CALCULATOR'), centerTitle: true),
      body: Column(
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
                      cardText: 'MALE',
                      iconData: FontAwesomeIcons.mars,
                    ),
                    onPressed: () {
                      setState(() {
                        gender = Gender.male;
                      });
                    },
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    color: gender == Gender.female
                        ? kActiveCardColor
                        : kInactiveCardColor,
                    cardChild: const IconContent(
                      cardText: 'FEMALE',
                      iconData: FontAwesomeIcons.venus,
                    ),
                    onPressed: () {
                      setState(() {
                        gender = Gender.female;
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              color: kActiveCardColor,
              cardChild: Container(),
              onPressed: () {},
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    color: kActiveCardColor,
                    cardChild: Container(),
                    onPressed: () {},
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    color: kActiveCardColor,
                    cardChild: Container(),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: kButtonColor,
            width: double.infinity,
            height: 80,
          ),
        ],
      ),
    );
  }
}
