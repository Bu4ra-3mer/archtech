import 'package:archtech/features/auth/presentation/views/sign_in_view.dart';
import 'package:archtech/features/on_boarding/presentation/cubit/on_boarding_cubit.dart';
import 'package:archtech/features/on_boarding/presentation/cubit/on_boarding_state.dart';
import 'package:archtech/features/on_boarding/presentation/widgets/onboarding_slides.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OnboardingView extends StatelessWidget {
  OnboardingView({super.key});
  static String id = 'Onboarding1View';

  final List<Map<String, String>> slides = [
    {
      'image': 'assets/images/image1.png',
      'description': 'اكتشف روائع النقوش القديمة واستعد لرحلة عبر الزمن',
    },
    {
      'image': 'assets/images/image2.png',
      'description':
          'استخدم الذكاء الاصطناعي لتحليل وفهم النصوص التاريخية عبر الزمن',
    },
    {
      'image': 'assets/images/image3.png',
      'description':
          'تجول في عالم التراث باستخدام خريطة تفاعلية للمواقع الاثرية',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => OnBoardingCubit(),
      child: BlocConsumer<OnBoardingCubit, OnBoardingState>(
        listener: (context, state) {
          state.maybeWhen(
            navigateToAuth: () =>
                Navigator.pushReplacementNamed(context, SignInView.id),
            orElse: () {},
          );
        },
        builder: (context, state) {
          int displayIndex = state.maybeWhen(
            pageChanged: (index) => index,
            navigateToAuth: () => slides.length - 1,
            orElse: () => 0,
          );

          return Scaffold(
            body: Stack(
              children: [
                IndexedStack(
                  index: displayIndex,
                  children: slides.map((slide) {
                    return OnboardingSlides(
                      currentIndex: displayIndex,
                      image: slide['image']!,
                      description: slide['description']!,
                      isLast: displayIndex == slides.length - 1,
                      onSkip: () =>
                          context.read<OnBoardingCubit>().CompleteOnBoarding(),
                      onNext: () {
                        if (displayIndex < slides.length - 1) {
                          context.read<OnBoardingCubit>().changePage(
                            displayIndex + 1,
                          );
                        } else {
                          context.read<OnBoardingCubit>().CompleteOnBoarding();
                        }
                      },
                    );
                  }).toList(),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
