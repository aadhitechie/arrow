import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';
import 'package:sample_ecomerce/screens/auth/login/view/login_screen.dart';
import 'package:sample_ecomerce/screens/auth/otp/controller/otp_controller.dart';
import 'package:sample_ecomerce/widgets/elevatedbtn.dart';

import '../../../../core/constants.dart';

class OtpScreen extends StatelessWidget {
  OtpScreen({super.key});
  OtpController otpController = Get.put(OtpController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Stack(children: [
                Container(
                  width: double.infinity,
                  height: otpController.height * 0.3,
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
            ],
          ),
          SizedBox(
            height: otpController.height * 0.2,
          ),
          Text(
          'Enter Your OTP',
          style: GoogleFonts.poppins(fontWeight: FontWeight.w500,fontSize: 20),
        ),
        kHeight20,
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: OTPTextField(
              keyboardType: TextInputType.number,
              outlineBorderRadius: 10,
              otpFieldStyle: OtpFieldStyle(
                focusBorderColor: themeColor,
                enabledBorderColor: kGreyColor
              ),
              length: 4,
              width: MediaQuery.of(context).size.width,
              fieldWidth: 50,
              style: const TextStyle(fontSize: 17,fontWeight: FontWeight.bold),
              textFieldAlignment: MainAxisAlignment.spaceAround,
              fieldStyle: FieldStyle.box,
              onCompleted: (pin) {
               // print("Completed: " + pin);
               
              },
              onChanged: (value) {
                print(value);
              },
            ),
          ),
          SizedBox(
            height: otpController.height * 0.05,
          ),
       SizedBox(
        width: otpController.width * 0.85,
        child: Elevatedbtn(btnname: 'Done', onpress: (){
          Get.off(()=>LoginScreen());
        })) ],
      ),
    );
  }
}
