// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, unused_local_variable

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:iconsax/iconsax.dart';
import 'features/pages/screens/checkout/checkout..dart';
import 'features/pages/screens/shop/shop.dart';
import 'features/pages/screens/home/home.dart';
import 'utils/constants/colors.dart';
import 'utils/constants/sizes.dart';
import 'utils/helpers/helper_function.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    final darkMode = THelperFunctions.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: Obx(
        () =>  GNav(
        color: darkMode ? TColors.white : TColors.black,
        activeColor: TColors.primary,
        tabBackgroundColor: Colors.transparent,
        mainAxisAlignment: MainAxisAlignment.center,
        tabBorderRadius: 16,
        gap: 16,
        selectedIndex: controller.selectedIndex.value,
        onTabChange: (index) => controller.selectedIndex.value = index,
        tabs:  [
          GButton(icon: Iconsax.home, iconSize: TSizes.iconMd,
          text: 'Home',
          ),
          GButton(icon: Iconsax.shopping_bag, iconSize: TSizes.iconMd,
          text: 'Shop',
          ),
          GButton(icon: CupertinoIcons.shopping_cart, iconSize: TSizes.iconMd,
          text: 'Checkout',
          ),
        ],
        ),
      ),
        body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }
}

class NavigationController extends GetxController{
  final Rx<int> selectedIndex = 0.obs;

  final screens =[
    HomeScreen(),
    ShopScreen(),
    CheckoutScreen(),
  ];
}