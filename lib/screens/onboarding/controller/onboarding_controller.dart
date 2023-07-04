import 'package:get/get.dart';

class OnboardingController extends GetxController {
  bool isLoading = false;
  double height = Get.height;
  double width = Get.width;
  bool isFinished = false;
  scrollWidget() {
    Future.delayed(const Duration(seconds: 2), () {
      isFinished = true;
      update();
    });
  }
  
}
