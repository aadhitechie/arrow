import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:sample_ecomerce/core/constants.dart';
import 'package:sample_ecomerce/screens/splash_screen/controller/splash_screen_sontroller.dart';

class WelcomeScreen extends StatelessWidget {
   WelcomeScreen({super.key});
SplashScreenController splashScreenController = SplashScreenController();
  @override
  Widget build(BuildContext context) {
   WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      splashScreenController.onboardingnsplashTimer();
    });

    return Scaffold(
      backgroundColor: themeColor,
      body: 
      Center(
        child: LottieBuilder.asset('assets/lotties/105072-welcome-message.json',width: 250,repeat: false,),
      ),
    );
  }
}