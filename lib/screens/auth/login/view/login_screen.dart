import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sample_ecomerce/screens/auth/login/controller/login_controller.dart';
import 'package:sample_ecomerce/screens/auth/signup/view/signup_screen.dart';
import 'package:sample_ecomerce/widgets/elevatedbtn.dart';
import 'package:sample_ecomerce/widgets/textfields.dart';

import '../../../../core/constants.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  LoginController loginController = Get.put(LoginController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Form(
        key: loginController.formKey,
        child: Column(
          children: [
            Stack(children: [
              Container(
                width: double.infinity,
                height: loginController.height * 0.3,
                decoration: const BoxDecoration(
                    color: themeColor,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(150),
                        bottomRight: Radius.circular(150))),
              ),
              Positioned(
                bottom: 10,
                left: 155,
                child: Text(
                  'ARROW',
                  style: GoogleFonts.poppins(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: kWhitecolor),
                ),
              )
            ]),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: loginController.height * 0.10,
                  ),
                  TextFields(
                      validator: (value) {
                        if (!RegExp(r'^[\w-]+(\.[\w-]+)*@([a-zA-Z0-9-]+\.)+[a-zA-Z]{2,7}$')
                                .hasMatch(value!) ||
                            value.isEmpty) {
                          return 'Enter a valid email address';
                        } else {
                          return null;
                        }
                      },
                      fieldname: 'Your Email Address',
                      obscure: false),
                  SizedBox(
                    height: loginController.height * 0.03,
                  ),
                  Obx(
                    ()=> TextFields(
                        suffixIcon: IconButton(
                          onPressed: () {
                            loginController.obscure.toggle();
                          },
                          icon: loginController.obscure.value 
                              ? const Icon(
                                  Icons.visibility,
                                  color: kBlackcolor,
                                )
                              : const Icon(
                                  Icons.visibility_off,
                                  color: kBlackcolor,
                                ),
                        ),
                        validator: (value) {
                          if (value!.isEmpty || value.length < 8) {
                            return 'Enter a valid password';
                          } else {
                            return null;
                          }
                        },
                        fieldname: 'Enter Your Password',
                        obscure: loginController.obscure.value),
                  ),
                  SizedBox(
                    height: loginController.height * 0.02,
                  ),
                  Elevatedbtn(
                      onpress: () {
                        if (loginController.formKey.currentState!.validate()) {}
                      },
                      btnname: 'Login'),
                  SizedBox(
                    height: loginController.height * 0.02,
                  ),
                  SizedBox(
                      height: loginController.height * 0.03,
                      child: const Divider(
                        thickness: 2,
                        indent: 2,
                      )),
                  InkWell(
                      onTap: () {
                        Get.off(() => SignupScreen());
                      },
                      child: Text(
                        'Don\'t have an account?',
                        style: GoogleFonts.poppins(fontSize: 12),
                      ))
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
