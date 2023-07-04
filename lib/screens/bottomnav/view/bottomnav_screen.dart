import 'package:flashy_tab_bar2/flashy_tab_bar2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sample_ecomerce/core/constants.dart';
import 'package:sample_ecomerce/screens/bottomnav/controller/bottomnav_controller.dart';

class BottomNavScreen extends StatelessWidget {
  BottomNavScreen({super.key});
  final bottomController = Get.put(BottomController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
           
            shape: const RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.vertical(bottom: Radius.circular(30))),
           // backgroundColor: themeColor,
            leading: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.menu,
                color: kBlackcolor,
              ),
            ),
            title: Text(
              'ARROW',
              style: GoogleFonts.poppins(
                fontSize: 20,
                color: kBlackcolor,
              ),
            ),
            actions: [
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.more_vert,
                    color: kBlackcolor,
                  ))
            ],
          ), 
      body: GetBuilder<BottomController>(builder: (controller){
        return  bottomController.tabItems[bottomController.selectedIndex];
      }),
      bottomNavigationBar: GetBuilder<BottomController>(builder: (context) {
        return ClipRRect(
          borderRadius: const BorderRadius.vertical(top: Radius.circular(30)),
          child: FlashyTabBar(
            backgroundColor: themeColor,
            animationCurve: Curves.bounceIn,
            selectedIndex: bottomController.selectedIndex,
            showElevation: true,
            onItemSelected: (value) {
              bottomController.bottomNav(value);
            },
            items: [
              FlashyTabBarItem(
                activeColor: kWhitecolor,
                icon: const Icon(Icons.home_outlined),
                title: const Text('Home'),
              ),
              FlashyTabBarItem(
                activeColor: kWhitecolor,
                icon: const Icon(Icons.category_outlined),
                title: const Text('Category'),
              ),
              FlashyTabBarItem(
                activeColor: kWhitecolor,
                icon: const Icon(Icons.favorite_border_outlined),
                title: const Text('Wishlist'),
              ),
              FlashyTabBarItem(
                activeColor: kWhitecolor,
                icon: const Icon(Icons.person_2_outlined),
                title: const Text('Profile'),
              ),
            ],
          ),
        );
      }),
    );
  }
}
