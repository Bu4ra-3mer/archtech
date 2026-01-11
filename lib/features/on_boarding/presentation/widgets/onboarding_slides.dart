import 'package:archtech/features/on_boarding/presentation/widgets/onboarding_bottom_sheet.dart';
import 'package:flutter/material.dart';

class OnboardingSlides extends StatelessWidget {
  final String image;
  final String description;
  final bool isLast;
  final VoidCallback onSkip;
  final VoidCallback onNext;
  final int currentIndex;

  const OnboardingSlides({
    super.key,
    required this.image,
    required this.description,
    required this.isLast,
    required this.onSkip,
    required this.onNext,
    required this.currentIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Positioned.fill(child: Image.asset(image, fit: BoxFit.cover)),

        OnboardingBottomSheet(
          description: description,
          currentIndex: currentIndex,
          isLast: isLast,
          onNext: onNext,
          onSkip: onSkip,
        ),
       ],
    );
  }
}


