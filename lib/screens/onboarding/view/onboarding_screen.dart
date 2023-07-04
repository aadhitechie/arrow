import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:sample_ecomerce/core/constants.dart';

import 'package:sample_ecomerce/screens/onboarding/controller/onboarding_controller.dart';
import 'package:sample_ecomerce/screens/welcome_page/view/welcome_screen.dart';
import 'package:swipeable_button_view/swipeable_button_view.dart';

class OnboardingScreen extends StatelessWidget {
  // ignore: prefer_const_constructors_in_immutables
  OnboardingScreen({super.key});
  final onboardingcontroller = Get.put(OnboardingController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<OnboardingController>(builder: (controller) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Stack(children: [
              Container(
                width: double.infinity,
                height: onboardingcontroller.height * 0.5,
                decoration: const BoxDecoration(
                    color: themeColor,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(150),
                        bottomRight: Radius.circular(150))),
              ),
              Positioned(
                left: 160,
                bottom: -40,
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
              )
            ]),
            SizedBox(
              height: controller.height * 0.05,
            ),
            Text(
              'ARROW',
              style: GoogleFonts.poppins(
                  fontSize: 30, fontWeight: FontWeight.bold, color: themeColor),
            ),
            SizedBox(
              height: controller.height * 0.05,
            ),
            SizedBox(
                width: controller.width * 0.9,
                child: Text(
                  'Step up your style game. Find your perfect fit.',
                  style: GoogleFonts.poppins(
                      fontSize: 15, fontWeight: FontWeight.w400),
                  textAlign: TextAlign.center,
                )),
            SizedBox(
              height: controller.height * 0.09,
            ),
            SizedBox(
              width: controller.width * 0.8,
              child: SwipeableButtonView(
                  buttonText: 'SLIDE TO EXPLORE',
                  buttonWidget: Container(
                    child: const Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: Colors.grey,
                    ),
                  ),
                  activeColor: themeColor,
                  isFinished: controller.isFinished,
                  onWaitingProcess: () {
                    controller.scrollWidget();
                  },
                  onFinish: () async {
                    await Navigator.of(context).pushAndRemoveUntil(
                        MaterialPageRoute(
                            builder: (context) => WelcomeScreen()),
                        (route) => false);
                  }),
            )
          ],
        );
      }),
    );
  }
}
