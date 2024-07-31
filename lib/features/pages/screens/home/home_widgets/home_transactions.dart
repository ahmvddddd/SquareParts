// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../personalization/screens/transactions/add.dart';
import '../../../../personalization/screens/transactions/recieve.dart';
import '../../../../personalization/screens/transactions/send.dart';

class HomeTransactions extends StatelessWidget {
  const HomeTransactions({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        GestureDetector(
          onTap: () => Get.to(() => SendScreen()) ,
          child: Container(
            height: 50,
            width: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(TSizes.borderRadiusMd),
              color: TColors.primary
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Iconsax.send_2, color: Colors.white, size: TSizes.iconSm,),
                Text('Send',style: Theme.of(context).textTheme.labelSmall)
              ],
            ),
          ),
        ),

        GestureDetector(
          onTap: () => Get.to(() => RecieveScreen()) ,
          child: Container(
            height: 50,
            width: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(TSizes.borderRadiusMd),
              color: TColors.primary
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Iconsax.receive_square, color: Colors.white, size: TSizes.iconSm,),
                Text('Recieve',style: Theme.of(context).textTheme.labelSmall)
              ],
            ),
          ),
        ),
    
        GestureDetector(
          onTap: () => Get.to(() => AddScreen()),
          child: Container(
            height: 50,
            width: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(TSizes.borderRadiusMd),
              color: TColors.primary
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Iconsax.add_square, color: Colors.white, size: TSizes.iconSm),
                Text('Add',style: Theme.of(context).textTheme.labelSmall)
              ],
            ),
          ),
        ),
      ],
    );
  }
}
