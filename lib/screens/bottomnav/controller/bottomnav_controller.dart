import 'package:get/get.dart';
import 'package:sample_ecomerce/screens/category/view/category_screen.dart';
import 'package:sample_ecomerce/screens/homepage/view/home_scree.dart';
import 'package:sample_ecomerce/screens/profile/view/profile_screen.dart';
import 'package:sample_ecomerce/screens/whishlist/view/whishlist_screen.dart';

class BottomController extends GetxController{
   int selectedIndex=0;
   int currentIndex = 0;

   void bottomNav(value) {
   selectedIndex = value;
    update();
  }
  List tabItems = [
   HomeScreen(),
   CategoryScreen(),
   WhislistScreen(),
   ProfileScreen()
  ];
}