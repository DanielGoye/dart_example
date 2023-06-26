import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi_calculator/reusable_card.dart';
import 'package:bmi_calculator/icon_content.dart';

const activeCardColor = Color(0xFF1d1e33);
const inactiveCardColor = Color(0xFF111328);
const buttonColor = Color(0xFFEB1555);

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
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        gender = Gender.male;
                      });
                    },
                    child: ReusableCard(
                      color: gender == Gender.male
                          ? activeCardColor
                          : inactiveCardColor,
                      cardChild: const IconContent(
                        cardText: 'MALE',
                        iconData: FontAwesomeIcons.mars,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        gender = Gender.female;
                      });
                    },
                    child: ReusableCard(
                      color: gender == Gender.female
                          ? activeCardColor
                          : inactiveCardColor,
                      cardChild: const IconContent(
                        cardText: 'FEMALE',
                        iconData: FontAwesomeIcons.venus,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              color: activeCardColor,
              cardChild: Container(),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    color: activeCardColor,
                    cardChild: Container(),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    color: activeCardColor,
                    cardChild: Container(),
                  ),
                )
              ],
            ),
          ),
          Container(
            color: buttonColor,
            width: double.infinity,
            height: 80,
          )
        ],
      ),
    );
  }
}
