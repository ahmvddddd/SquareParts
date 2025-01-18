// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/responsive.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helper_function.dart';
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
    final dark = THelperFunctions.isDarkMode(context);
    return Row(
      children: [
        //image
        Container(
                width: Responsive.xsCardWidth,
                constraints: BoxConstraints(maxHeight: Responsive.xsCardHeight),
                decoration: BoxDecoration(
                  color: dark ? TColors.darkerGrey : TColors.light,
                    borderRadius: BorderRadius.circular(TSizes.borderRadiusLg)),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(TSizes.borderRadiusLg),
                  child: Image.asset(
                    imageUrl,
                    height: 50,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
        const SizedBox(width: TSizes.spaceBtwItems),

        //Title, price and size
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  [
            TBrandTitleTextWithVerifiedIcon(title: title1),
            Flexible(child: TProductTitleText(title: title2, maxlines: 1,)),
          ],
        )
      ],
    );
  }
}