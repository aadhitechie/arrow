import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';

import '../core/constants.dart';

class TextFields extends StatelessWidget {
   TextFields({super.key, required this.fieldname, required this.obscure,this.textInputType, this.validator,this.suffixIcon});
final String fieldname;
 final bool obscure;
 final Widget? suffixIcon;
 TextInputType? textInputType;
 final String? Function(String?)? validator;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          fieldname,
          style: GoogleFonts.poppins(fontWeight: FontWeight.w500),
        ),
        kHeight10,
        TextFormField(
          
          validator: validator,
          keyboardType: textInputType,
            obscureText: obscure,
            decoration: InputDecoration(
              suffixIcon: suffixIcon,
                contentPadding: EdgeInsets.symmetric(horizontal: 20),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: kGreyColor, width: 0.5),
                  borderRadius: BorderRadius.circular(100.0),
                ),
                focusColor: themeColor,
                border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(100))))),
      ],
    );
  }
}
