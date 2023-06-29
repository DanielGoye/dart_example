import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("RESULTS"),
        centerTitle: true,
      ),
      body: const Center(
        child: Text("Results Page"),
      ),
    );
  }
}
