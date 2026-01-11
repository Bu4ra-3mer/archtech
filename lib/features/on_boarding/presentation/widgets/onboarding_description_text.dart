import 'package:flutter/material.dart';

class OnboardingDescriptionText extends StatelessWidget {
  const OnboardingDescriptionText({super.key, required this.description});

  final String description;

  @override
  Widget build(BuildContext context) {
    return Text(
      description,
      textAlign: TextAlign.center,
      style: const TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 20,
        color: Colors.black87,
      ),
    );
  }
}
