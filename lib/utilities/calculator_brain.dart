class CalculatorBrain {
  final int height;
  final int weight;

  CalculatorBrain({required this.weight, required this.height});

  double calculateBMI() {
    double heightMetres = height / 100;
    double bmi = weight / (heightMetres * heightMetres);
    return bmi;
  }

  String bmiString() {
    return calculateBMI().toStringAsFixed(1);
  }

  String getResults() {
    double bmi = calculateBMI();
    if (bmi >= 25) {
      return 'Overweight';
    } else if (bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    double bmi = calculateBMI();
    if (bmi >= 25) {
      return 'You have a higher than normal body weight. Try to exercise more';
    } else if (bmi > 18.5) {
      return 'You have a normal body weight. Good job!';
    } else {
      return 'You have a lower than normal body weight. You can eat a bit more.';
    }
  }
}
