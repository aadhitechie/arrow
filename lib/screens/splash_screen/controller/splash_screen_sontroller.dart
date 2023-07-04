import 'dart:async';

import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/route_manager.dart';
import 'package:sample_ecomerce/screens/auth/login/view/login_screen.dart';
import 'package:sample_ecomerce/screens/onboarding/view/onboarding_screen.dart';

class SplashScreenController extends GetxController{
  void splashTimer(){
    Timer(const Duration(seconds: 2), () { 
      Get.off(()=> OnboardingScreen());
    });
  }
  void onboardingnsplashTimer(){
    Timer(const Duration(seconds: 4), () { 
      Get.off(()=> LoginScreen());
    });
  }
}