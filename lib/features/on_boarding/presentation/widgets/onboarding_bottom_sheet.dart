import 'package:archtech/features/on_boarding/presentation/widgets/onboarding_actions.dart';
import 'package:archtech/features/on_boarding/presentation/widgets/onboarding_description_text.dart';
import 'package:archtech/features/on_boarding/presentation/widgets/onboarding_indicator.dart';
import 'package:flutter/material.dart';

class OnboardingBottomSheet extends StatelessWidget {
    final String description;
  final int currentIndex;
  final bool isLast;
  final VoidCallback onNext;
  final VoidCallback onSkip;
  const OnboardingBottomSheet({
    super.key,
    required this.description,
    required this.currentIndex,
    required this.isLast,
    required this.onNext,
    required this.onSkip,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: MediaQuery.of(context).size.height * 0.40,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 20,
              offset: const Offset(0, -10),
            ),
          ],
        ),
        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 40),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              OnboardingDescriptionText(description: description),
              const SizedBox(height: 20),

              OnboardingIndicator(currentIndex: currentIndex),
              const SizedBox(height: 60),
              OnboardingActions(isLast: isLast, onNext: onNext, onSkip: onSkip),
            ],
          ),
        ),
      ),
    );
  }
}
