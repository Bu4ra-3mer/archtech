import 'package:archtech/features/on_boarding/presentation/widgets/onboarding_slides.dart';
import 'package:flutter/material.dart';

// class OnboardingView extends StatefulWidget {
//   const OnboardingView({super.key});
//   static String id = 'Onboarding1View';

//   @override
//   State<OnboardingView> createState() => _OnboardingViewState();
// }

// class _OnboardingViewState extends State<OnboardingView> {
//   int currentIndex = 0;
//   final List<Map<String, String>> slides = [
//     {
//       'image': 'assets/images/image1.png',
//       'description': 'اكتشف روائع النقوش القديمة واستعد لرحلة عبر الزمن',
//     },
//     {
//       'image': 'assets/images/image2.png',
//       'description':
//           'استخدم الذكاء الاصطناعي لتحليل وفهم النصوص التاريخية عبر الزمن',
//     },
//     {
//       'image': 'assets/images/image3.png',
//       'description':
//           'تجول في عالم التراث باستخدام خريطة تفاعلية للمواقع الاثرية',
//     },
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           IndexedStack(
//             index: currentIndex,
//             children: slides.map((slide) {
//               return OnboardingSlides(
//                 currentIndex: currentIndex,
//                 image: slide['image']!,
//                 description: slide['description']!,
//                 isLast: currentIndex == slides.length - 1,
//                 onSkip: _goToHome,
//                 onNext: _nextPage,
//               );
//             }).toList(),
//           ),
//         ],
//       ),
//     );
//   }

//   void _nextPage() {
//     if (currentIndex < slides.length - 1) {
//       setState(() {
//         currentIndex++;
//       });
//     } else {
//       _goToHome();
//     }
//   }

//   void _goToHome() {
//     print("تم التخطي أو الانتهاء → انتقل للصفحة الرئيسية");
//   }
// }
class OnboardingView extends StatefulWidget {
  const OnboardingView({super.key});
  static String id = 'OnboardingView';

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
  int currentIndex = 0;
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
    return Stack(
      children: [
        IndexedStack(
          index: currentIndex,
          children: slides.map((slide) {
            return OnboardingSlides(
              image: slide['image']!,
              description:slide['description']!,
              isLast: currentIndex==slides.length-1,
              onSkip: _goToHome,
              onNext: _NextPage,
              currentIndex: currentIndex,
            );
          }).toList(),
        ),
      ],
    );
  }

  void _NextPage() {
    if (currentIndex < slides.length - 1) {
      setState(() {
        currentIndex++;
      });
    } else {
      _goToHome();
    }
  }

  void _goToHome() {
    print("انتقل للصفحة الرئيسية");
  }
}
