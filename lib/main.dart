import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sample_ecomerce/screens/auth/otp/view/otp_screen.dart';
import 'package:sample_ecomerce/screens/bottomnav/view/bottomnav_screen.dart';
import 'package:sample_ecomerce/screens/onboarding/view/onboarding_screen.dart';
import 'package:sample_ecomerce/screens/splash_screen/view/spalsh_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true
      ),
      home:  OnboardingScreen(),
    );
  }
}

