import 'package:flutter/material.dart';

class OtpTimer extends StatelessWidget {
  final String timeText;
  const OtpTimer({super.key, required this.timeText});

  @override
  Widget build(BuildContext context) {
    return Text(
      timeText,
      style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black54),
    );
  }
}