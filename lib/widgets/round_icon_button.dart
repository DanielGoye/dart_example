import 'package:flutter/material.dart';

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
