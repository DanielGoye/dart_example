import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi_calculator/reusable_card.dart';
import 'package:bmi_calculator/icon_content.dart';

const activeCardColor = Color(0xFF1d1e33);
const buttonColor = Color(0xFFEB1555);

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('BMI CALCULATOR'), centerTitle: true),
      body: Column(
        children: [
          const Expanded(
            child: Row(
              children: [
                ReusableCard(
                  color: activeCardColor,
                  cardChild: IconContent(
                    cardText: 'MALE',
                    iconData: FontAwesomeIcons.mars,
                  ),
                ),
                ReusableCard(
                  color: activeCardColor,
                  cardChild: IconContent(
                    cardText: 'FEMALE',
                    iconData: FontAwesomeIcons.venus,
                  ),
                ),
              ],
            ),
          ),
          ReusableCard(
            color: activeCardColor,
            cardChild: Container(),
          ),
          Expanded(
            child: Row(
              children: [
                ReusableCard(
                  color: activeCardColor,
                  cardChild: Container(),
                ),
                ReusableCard(
                  color: activeCardColor,
                  cardChild: Container(),
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
