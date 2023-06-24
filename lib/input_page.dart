import 'package:flutter/material.dart';

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
                ),
                ReusableCard(
                  color: activeCardColor,
                ),
              ],
            ),
          ),
          const ReusableCard(
            color: activeCardColor,
          ),
          const Expanded(
            child: Row(
              children: [
                ReusableCard(
                  color: activeCardColor,
                ),
                ReusableCard(
                  color: activeCardColor,
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

class ReusableCard extends StatelessWidget {
  final Color color;

  const ReusableCard({
    super.key,
    required this.color,
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
      ),
    );
  }
}
