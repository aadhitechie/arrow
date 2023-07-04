import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:sample_ecomerce/core/constants.dart';
import 'package:sample_ecomerce/screens/onboarding/controller/onboarding_controller.dart';
import 'package:sample_ecomerce/screens/splash_screen/controller/splash_screen_sontroller.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({super.key});
  SplashScreenController splashScreenController = SplashScreenController();

  double height = Get.height;
  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      splashScreenController.splashTimer();
    });
    return Scaffold(
      body: GetBuilder<SplashScreenController>(
          init: splashScreenController,
          builder: (controller) {
            return Center(
              child: Column(
                children: [
                  SizedBox(height: 100,),
                  LottieBuilder.asset('assets/lotties/arrow.json',height: 100,),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Stack(children: [
                          
                          Container(
                            width: double.infinity,
                            height: OnboardingController().height * 0.5,
                            decoration: const BoxDecoration(
                                color: themeColor,
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(150),
                                    topRight: Radius.circular(150))),
                          ),
                        Positioned(
                      left: 160,
                      top: -40,
                      child: CircleAvatar(
                        backgroundColor: kWhitecolor,
                        radius: 60,
                        child: ClipRRect(
                          clipBehavior: Clip.hardEdge,
                          borderRadius: BorderRadius.circular(100.0),
                          child: LottieBuilder.asset(
                            'assets/lotties/login-page-shoe.json',
                            repeat: false,
                          ),
                        ),
                      ),
                    )])
                      ],
                    ),
                  ),
                ],
              ),
            );
          }),
    );
  }
}
