import 'package:archtech/features/on_boarding/presentation/views/onboarding_view.dart';
import 'package:archtech/features/on_boarding/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(const ARCHTECH());
}

class ARCHTECH extends StatelessWidget {
  const ARCHTECH({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      locale: const Locale('ar'),
      supportedLocales: const [Locale('ar')],

      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      initialRoute: SplashView.id,
      routes: {
        SplashView.id: (context) => SplashView(),
        OnboardingView.id: (context) => OnboardingView(),
      },
    );
  }
}
