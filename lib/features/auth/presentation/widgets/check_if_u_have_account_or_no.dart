import 'package:archtech/core/constatnts.dart';
import 'package:flutter/material.dart';

class CheckIfUHaveAcountOrNo extends StatelessWidget {
  final String text;
  final String textButton;
  final VoidCallback? onTap;
  const CheckIfUHaveAcountOrNo({
    super.key,
    required this.text,
    required this.textButton,
    required this.onTap
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(text, style: TextStyle(color: Colors.black, fontSize: 16)),
        GestureDetector(
          onTap:onTap,
          child: Text(
            textButton,
            style: TextStyle(
              color: AppColors.primary,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ),
      ],
    );
  }
}
