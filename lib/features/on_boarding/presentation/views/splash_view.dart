import 'package:archtech/features/auth/presentation/views/sign_up_view.dart';
import 'package:archtech/features/on_boarding/presentation/views/onboarding_view.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});
  static String id = 'SplashView';

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  
  @override
  void initState() {
    super.initState();
    _navigateToNext();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFC9A882),
      body: Stack(
        children: [
          Positioned(
            top: 10,
            right: 200,
            child: Stack(
              children: [
                Positioned(
                  top: 30,
                  left: 50,
                  child: Image.asset(
                    'assets/images/Frame_1321317626.png',
                    width: 100,
                    height: 80,
                  ),
                ),

                Image.asset(
                  'assets/images/Rectangle_4173@2x.png',
                  width: 300,
                  height: 250,
                ),
              ],
            ),
          ),

          Positioned(
            top: 100,
            left: 190,
            child: Image.asset(
              'assets/images/Rectangle_4175.png',
              width: 300,
              height: 250,
              cacheWidth: 200,
              cacheHeight: 200,
            ),
          ),
          Positioned(
            bottom: 100,
            right: 190,
            child: Image.asset(
              'assets/images/Rectangle_4174.png',
              width: 300,
              height: 350,
            ),
          ),
          Positioned(
            bottom: 50,
            left: 190,
            child: Image.asset(
              'assets/images/Rectangle_4176.png',
              width: 300,
              height: 250,
              cacheWidth: 300,
              cacheHeight: 350,
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/Vector.png',
                  height: 150,
                  width: 100,
                ),
                Text(
                  'ARCHTECH',
                  style: TextStyle(
                    color: Color(0xff4B5320),
                    fontWeight: FontWeight.bold,
                    fontSize: 32,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
  void _navigateToNext() async {
    await Future.delayed(const Duration(seconds: 3)); 
    if (!mounted) return;
    final prefs = await SharedPreferences.getInstance();
    bool isSeen = prefs.getBool('onboarding_seen') ?? false;

    if (isSeen) {
      Navigator.pushReplacementNamed(context, SignUpView.id);
    } else {
      Navigator.pushReplacementNamed(context, OnboardingView.id);
    }
  }
}
