// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, unused_local_variable

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'features/pages/screens/checkout/checkout..dart';
import 'features/pages/screens/shop/shop.dart';
import 'features/pages/screens/home/home.dart';
import 'utils/constants/colors.dart';
import 'utils/constants/sizes.dart';
import 'utils/helpers/helper_function.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    final darkMode = THelperFunctions.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: Obx(
        () =>  NavigationBar(
          height: 60,
          elevation: 0,
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (index) => controller.selectedIndex.value = index,
          backgroundColor: darkMode ? TColors.black : Colors.white,
          indicatorColor: darkMode ? TColors.white.withOpacity(0.1) : TColors.black.withOpacity(0.1),
          destinations: [
            NavigationDestination(icon: Icon(Iconsax.home, size: TSizes.iconMd), label: 'Home'),
            NavigationDestination(icon: Icon(Iconsax.shopping_bag, size: TSizes.iconMd), label: 'Shop'),
            NavigationDestination(icon: Icon(CupertinoIcons.shopping_cart, size: TSizes.iconMd), label: 'Checkout'),
          ]
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