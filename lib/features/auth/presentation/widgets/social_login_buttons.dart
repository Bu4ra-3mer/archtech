import 'package:flutter/material.dart';

class SocialLoginButtons extends StatelessWidget {
  final List<String> images;
  const SocialLoginButtons({super.key, required this.images});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: images.map((imagePath) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5.0),
          child: socialIcon(imagePath),
        );
      }).toList(),
    );
  }

  Widget socialIcon(String imagePath) {
    return InkWell(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.all(12),
        child: Image.asset(imagePath, height: 50, width: 50),
      ),
    );
  }
}
