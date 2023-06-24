import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
                  cardChild: ReusableCardChild(
                    cardText: 'MALE',
                    iconData: FontAwesomeIcons.mars,
                  ),
                ),
                ReusableCard(
                  color: activeCardColor,
                  cardChild: ReusableCardChild(
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

class ReusableCardChild extends StatelessWidget {
  final String cardText;
  final IconData iconData;

  const ReusableCardChild({
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

class ReusableCard extends StatelessWidget {
  final Color color;
  final Widget cardChild;

  const ReusableCard({
    super.key,
    required this.color,
    required this.cardChild,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: color,
        ),
        child: cardChild,
      ),
    );
  }
}
