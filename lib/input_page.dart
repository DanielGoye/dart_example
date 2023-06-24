import 'package:flutter/material.dart';

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
      body: const Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    color: Color(0xFF1d1e33),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    color: Color(0xFF1d1e33),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              color: Color(0xFF1d1e33),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    color: Color(0xFF1d1e33),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    color: Color(0xFF1d1e33),
                  ),
                )
              ],
            ),
          ),
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
    return Container(
      margin: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: color,
      ),
    );
  }
}
