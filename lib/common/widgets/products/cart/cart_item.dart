// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helper_function.dart';
import '../../images/t_rounded_image.dart';
import '../../texts/product_title_text.dart';
import '../../texts/t_brand_title_text_with_verified_icon.dart';

class TCartItem extends StatelessWidget {
  const TCartItem({
    super.key, required this.title1, required this.title2, required this.imageUrl,
  });

  final String imageUrl;
  final String title1;
  final String title2;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        //image
        TRoundedImage(imageUrl: imageUrl,
        width: 60,
        height: 60,
        padding: EdgeInsets.all(TSizes.sm),
        backgroundColor: THelperFunctions.isDarkMode(context) ? TColors.darkerGrey : TColors.light,
        ),
        const SizedBox(width: TSizes.spaceBtwItems),

        //Title, price and size
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  [
            TBrandTitleTextWithVerifiedIcon(title: title1),
            Flexible(child: TProductTitleText(title: title2, maxlines: 1,)),

            //Attributes
            // Text.rich(
            //   TextSpan(
            //     children: [
            //       TextSpan(text: 'Color', style: Theme.of(context).textTheme.bodySmall),
            //       TextSpan(text: ' Green', style: Theme.of(context).textTheme.bodyLarge),
            //       TextSpan(text: ' Size', style: Theme.of(context).textTheme.bodySmall),
            //       TextSpan(text: ' Uk 08', style: Theme.of(context).textTheme.bodyLarge),
            //     ]
            //   )
            // )
          ],
        )
      ],
    );
  }
}