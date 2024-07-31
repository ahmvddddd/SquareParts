// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../../common/widgets/custom_shapes/containers/rounded_container.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/helpers/helper_function.dart';

class SwapCard extends StatelessWidget {
  const SwapCard({super.key,
  required this.text,
  required this.text2,
  required this.imageUrl
  });

  final String text;
  final String text2;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return TRoundedContainer(
        height: 100,
        borderColor: TColors.primary,
        backgroundColor: dark ? Colors.transparent : TColors.white,
        showBorder: true,
        padding: EdgeInsets.all(TSizes.sm),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            //Coin
            TRoundedContainer(
              padding: EdgeInsets.all(TSizes.sm),
              showBorder: true,
              borderColor: dark ? Colors.white : TColors.dark,
              backgroundColor: dark ? Colors.transparent : TColors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                       Image.asset(imageUrl, height: 30,),
                  SizedBox(width: TSizes.sm,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(text, style: Theme.of(context).textTheme.labelLarge,),
                       Text('\$14,000', style: Theme.of(context).textTheme.labelLarge,),
                    ],
                  ),
                    ]
                  ),

                  Icon(Iconsax.arrow_down, size: TSizes.iconSm)
                 
                ],
              ),
            ),
            
            
          ],
        ));
  }
}