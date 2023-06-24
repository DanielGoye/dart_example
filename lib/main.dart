import 'package:flutter/material.dart';
import 'package:bmi_calculator/input_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const BMICalculator();
  }
}

class BMICalculator extends StatelessWidget {
  const BMICalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const InputPage(),
      theme: ThemeData.dark().copyWith(
          primaryColor: const Color(0xFF0A0E21),
          appBarTheme: const AppBarTheme(backgroundColor: Color(0xFF0A0E21)),
          scaffoldBackgroundColor: const Color(0xFF0A0E21)),
    );
  }
}
