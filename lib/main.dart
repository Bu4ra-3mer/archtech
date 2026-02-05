import 'package:archtech/features/auth/presentation/cubit/auth_cubit.dart';
import 'package:archtech/features/auth/presentation/views/check_email_view.dart';
import 'package:archtech/features/auth/presentation/views/forgot_password_view.dart';
import 'package:archtech/features/auth/presentation/views/reset_password_view.dart';
import 'package:archtech/features/auth/presentation/views/sign_in_view.dart';
import 'package:archtech/features/auth/presentation/views/sign_up_view.dart';
import 'package:archtech/features/auth/presentation/views/verification_code_view.dart';
import 'package:archtech/features/home_view.dart';
import 'package:archtech/features/on_boarding/presentation/views/onboarding_view.dart';
import 'package:archtech/features/on_boarding/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(const ARCHTECH());
}

class ARCHTECH extends StatelessWidget {
  const ARCHTECH({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthCubit(),
      child: MaterialApp(
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
          SignUpView.id: (context) => SignUpView(),
          SignInView.id: (context) => SignInView(),
          ForgotPasswordView.id: (context) => ForgotPasswordView(),
          VerificationCodeView.id: (context) => VerificationCodeView(),
          CheckEmailView.id: (context) => CheckEmailView(),
          ResetPasswordView.id: (context) => ResetPasswordView(),
          HomeView.id: (context) => HomeView(),
        },
      ),
    );
  }
}
