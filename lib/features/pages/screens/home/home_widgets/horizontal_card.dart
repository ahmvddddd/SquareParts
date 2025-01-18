// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../../common/widgets/custom_shapes/containers/rounded_container.dart';
import '../../../../../common/widgets/texts/t_brand_title_text_with_verified_icon.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/responsive.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/helpers/helper_function.dart';

class HorizontalCard extends StatelessWidget {
  const HorizontalCard({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return TRoundedContainer(
      width: Responsive.searchMediumWidth,
      backgroundColor: dark ? TColors.dark : TColors.light,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //image
          Stack(
            children: [
              Container(
                width: Responsive.smCardWidth,
                constraints: BoxConstraints(maxHeight: Responsive.smCardWidth),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(TSizes.borderRadiusLg)),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(TSizes.borderRadiusLg),
                  child: Image.asset(
                    TImages.oil,
                    fit: BoxFit.contain,
                  ),
                ),
              ),

              //sale tag
              Positioned(
                top: 12,
                child: TRoundedContainer(
                  radius: TSizes.sm,
                  backgroundColor: TColors.secondary.withOpacity(0.8),
                  padding: const EdgeInsets.symmetric(
                      horizontal: TSizes.sm, vertical: TSizes.xs),
                  child: Text(
                    'DUI Product',
                    style: Theme.of(context)
                        .textTheme
                        .labelSmall!
                        .apply(color: TColors.black),
                  ),
                ),
              ),
            ],
          ),

          //name
          Container(
            width: Responsive.searchMediumWidth / 1.6,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    top: TSizes.sm,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 2.0),
                        child: Text(
                          'Mobil Advanced Full Synthetic Oil',
                          style: Theme.of(context)
                              .textTheme
                              .labelLarge,
                              softWrap: true,
                        ),
                      ),
                      const SizedBox(
                        height: TSizes.spaceBtwItems / 2,
                      ),
                      const TBrandTitleTextWithVerifiedIcon(title: 'Mobil'),
                    ],
                  ),
                ),

                //price
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('\u20A65,000',
                        style: Theme.of(context).textTheme.labelLarge),

                    //Add to cart
                    Container(
                      decoration: const BoxDecoration(
                          color: TColors.primary,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(TSizes.cardRadiusMd),
                              bottomRight:
                                  Radius.circular(TSizes.productImageRadius))),
                      child: const SizedBox(
                          width: TSizes.iconLg * 1.2,
                          height: TSizes.iconLg * 1.2,
                          child: Center(
                              child: Icon(Iconsax.add, color: TColors.white))),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
