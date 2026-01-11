
import 'package:archtech/core/constatnts.dart';
import 'package:flutter/material.dart';

class OnboardingIndicator extends StatelessWidget {
  const OnboardingIndicator({
    super.key,
    required this.currentIndex,
  });

  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(3, (index) {
        return AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          margin: const EdgeInsets.symmetric(horizontal: 6),
          width: currentIndex == index ? 24 : 10,
          height: 10,
          decoration: BoxDecoration(
            color: currentIndex == index
                ? AppColors.primary
                : Colors.grey.withOpacity(0.4),
            borderRadius: BorderRadius.circular(5),
          ),
        );
      }),
      
    );
  }
}


