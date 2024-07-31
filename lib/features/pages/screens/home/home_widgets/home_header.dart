// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../../common/widgets/custom_shapes/containers/rounded_container.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/helpers/helper_function.dart';
import '../../../../personalization/screens/settings/settings.dart';
import '../../checkout/checkout..dart';
import '../../shop/shop.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return TRoundedContainer(
      radius: TSizes.borderRadiusLg,
      padding: EdgeInsets.all(TSizes.md),
      backgroundColor: Colors.transparent,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //Icon
          Row(
            children: [
              GestureDetector(
              onTap: () => Get.to(SettingsScreen()),
              child: Icon(
                Iconsax.setting,
                color: dark ? Colors.white : Colors.black,
                size: TSizes.iconMd,
              )),

              //Avatar
              const SizedBox(width: TSizes.md,),
              Text('Logo',
              style: Theme.of(context).textTheme.headlineSmall,),
              SizedBox(
                width: TSizes.spaceBtwItems,
              ),
                ],
              ),


          
      
          //Icon
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              GestureDetector(
              onTap: () => Get.to(ShopScreen()),
              child: Icon(
                Icons.shopping_bag,
                color: dark ? Colors.white : Colors.black,
                size: TSizes.iconMd,
              )),
              const SizedBox(width: TSizes.md,),
              GestureDetector(
              onTap: () => Get.to(CheckoutScreen()),
              child: Icon(
                Icons.shopping_cart,
                color: dark ? Colors.white : Colors.black,
                size: TSizes.iconMd - 4,
              )),
            ],
          ),
        ],
      ),
    );
  }
}



// Container(
              //     width: 50,
              //     height: 50,
              //     padding: EdgeInsets.all(2),
              //     decoration: BoxDecoration(
              //       borderRadius: BorderRadius.circular(100),
              //       color: dark ? TColors.dark : Colors.white.withOpacity(0.7),
              //     ),
              //     child: Image.asset(
              //       TImages.avatar,
              //       fit: BoxFit.contain,
              //     )),

              // Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              //   Text('Account 1',
              //       style: Theme.of(context).textTheme.bodyMedium),
              //   Text('xyz12abcx5',
              //       style: Theme.of(context).textTheme.labelSmall),
              // ])