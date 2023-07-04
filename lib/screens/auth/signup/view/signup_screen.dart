import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sample_ecomerce/screens/auth/login/controller/login_controller.dart';
import 'package:sample_ecomerce/screens/auth/login/view/login_screen.dart';
import 'package:sample_ecomerce/screens/auth/otp/view/otp_screen.dart';
import 'package:sample_ecomerce/screens/auth/signup/controller/signup_controller.dart';

import '../../../../core/constants.dart';
import '../../../../widgets/elevatedbtn.dart';
import '../../../../widgets/textfields.dart';

class SignupScreen extends StatelessWidget {
   SignupScreen({super.key});
SignUpController signUpController = Get.put(SignUpController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: signUpController.formKey,
          child: Column(
            children: [
              Stack(children: [
                Container(
                  width: double.infinity,
                  height: signUpController.height * 0.2,
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
              kHeight10,
              Padding(
                 padding: const EdgeInsets.symmetric(horizontal:28.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextFields(
                      validator: (value){
                        if (!RegExp(r'^[\w-]+(\.[\w-]+)*@([a-zA-Z0-9-]+\.)+[a-zA-Z]{2,7}$')
                                .hasMatch(value!) ||
                            value.isEmpty) {
                          return 'Enter a valid email address';
                        } else {
                          return null;
                        }
                      },
                      fieldname: 'Enter Your Email', obscure: false),
                    SizedBox(
                      height: LoginController().height * 0.02,
                    ),
                    TextFields(
                      validator: (value) {
                        if (value!.length < 10 || value.isEmpty) {
                          return 'Enter a valid phone number';
                        }
                        else{
                          return null;
                        }
                      },
                        textInputType: TextInputType.number,
                        fieldname: 'Enter Your Phone Number',
                        obscure: false),
                    SizedBox(
                      height: LoginController().height * 0.02,
                    ),
                    TextFields(
                      validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please Enter Username';
                      } else {
                        return null;
                      }
                      },
                      fieldname: 'Choose Username', obscure: false),
                    SizedBox(
                      height: LoginController().height * 0.02,
                    ),
                    Obx(
                      ()=> TextFields(
                        suffixIcon: IconButton(
                            onPressed: () {
                              signUpController.obscure.toggle();
                            },
                            icon: signUpController.obscure.value 
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
                              return 'Please Enter 8 Digits';
                            }else{
                              return null;
                            }
                          },
                        fieldname: 'Choose Password', obscure: signUpController.obscure.value),
                    ),
                    SizedBox(
                      height: LoginController().height * 0.02,
                    ),
                    Obx(
                      ()=> TextFields(
                        suffixIcon: IconButton(
                            onPressed: () {
                              signUpController.obscure2.toggle();
                            },
                            icon: signUpController.obscure2.value 
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
                              return 'Please Enter 8 Digits';
                            }else{
                              return null;
                            }
                          },
                        fieldname: 'Confirm Password', obscure: signUpController.obscure2.value),
                    ),
                    SizedBox(
                      height: LoginController().height * 0.02,
                    ),
                    Elevatedbtn(
                      btnname: 'Register',
                      onpress: () {
                          if (signUpController.formKey.currentState!.validate()) {}
                        Get.to(()=>OtpScreen());
                      },
                    ),
                    SizedBox(
                      height: LoginController().height * 0.02,
                    ),
                    SizedBox(
                        height: LoginController().height * 0.03,
                        child: const Divider(
                          thickness: 2,
                          indent: 2,
                        )),
                    InkWell(
                      onTap: () {
                        Get.off(() => LoginScreen());
                        
                      },
                      child: Text(
                        'Already have an account?',
                        style: GoogleFonts.poppins(fontSize: 12),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
