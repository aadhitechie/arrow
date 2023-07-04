import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController  extends GetxController{
  double height = Get.height;
  double width = Get.width;
  
   RxBool obscure=false.obs;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final emailRegExp = RegExp(r'^[\w-]+(\.[\w-]+)*@([a-zA-Z0-9-]+\.)+[a-zA-Z]{2,7}$');
 
}