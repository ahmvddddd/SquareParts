// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../common/widgets/icons/t_circular_icon.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';

class TBottomAddToCart extends StatelessWidget {
  const TBottomAddToCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: TSizes.defaultSpace, vertical: TSizes.defaultSpace),
      decoration: BoxDecoration(
        color: Colors.transparent,
        border: Border.all(
          width: 2,
          color: TColors.primary,
        ),
        borderRadius:  BorderRadius.circular(TSizes.borderRadiusLg
        )
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              TCircularIcon(
                icon: Iconsax.minus,
                backgroundColor: TColors.darkerGrey,
                width: 40,
                height: 40,
                color: Colors.white,
              ),
              SizedBox(width: TSizes.spaceBtwItems,),
              Text('2', style: Theme.of(context).textTheme.titleSmall,),
              SizedBox(width: TSizes.spaceBtwItems,),
              TCircularIcon(
                icon: Iconsax.add,
                backgroundColor: TColors.darkerGrey,
                width: 40,
                height: 40,
                color: Colors.white,
              ),
            ],
          ),
          ElevatedButton(onPressed: (){},
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.all(TSizes.md),
            backgroundColor: TColors.primary,
            side: const BorderSide(color: TColors.black),
          ),
           child: Text('Add To Cart'))
        ],
      ),
    );
  }
}