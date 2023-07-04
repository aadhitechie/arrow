import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:sample_ecomerce/screens/auth/login/controller/login_controller.dart';

import '../core/constants.dart';

class Elevatedbtn extends StatelessWidget {
  const Elevatedbtn({super.key, required this.btnname, required this.onpress});
final String btnname;
final Function() onpress;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: LoginController().width * 1,
        height: 50,
        child: ElevatedButton(
          onPressed: onpress,
          child: Text(btnname),
          style: ElevatedButton.styleFrom(
              backgroundColor: themeColor,
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(100)))),
        ));
  }
}
