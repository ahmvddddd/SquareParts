// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../common/widgets/list_tile/settings_menu_tile.dart';
import '../../../../../common/widgets/texts/section_heading.dart';
import '../../../../../utils/constants/sizes.dart';

class TransactionHistoryCard extends StatelessWidget {
  const TransactionHistoryCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //Transaction History
        TSectionHeading(
          title: 'Transaction History',
          showActionButton: true,
          onPressed: () => Get.to(() {})
        ),
// HNotifications
        const SizedBox(height: TSizes.spaceBtwItems),
        TSettingsMenuTile(
          icon: Iconsax.money,
          title: 'Credit Transaction',
          subTitle: '\$1,704.02 was added to your wallet',
        ),
        const SizedBox(height: TSizes.spaceBtwItems),
        TSettingsMenuTile(
          icon: Iconsax.money,
          title: 'Credit Transaction',
          subTitle: '\$620.51 was added to your wallet',
        ),
      ],
    );
  }
}
