// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';

import '../../../../../common/widgets/custom_shapes/containers/rounded_container.dart';
import '../../../../../common/widgets/images/t_circular_image.dart';
import '../../../../../common/widgets/products/products_cards/product_price_text.dart';
import '../../../../../common/widgets/texts/product_title_text.dart';
import '../../../../../common/widgets/texts/t_brand_title_text_with_verified_icon.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/enums.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/helpers/helper_function.dart';

class TProductMetaData extends StatelessWidget {
  const TProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //Price and sale tag
        Row(
          children: [
            TRoundedContainer(
          radius: TSizes.md,
          backgroundColor: TColors.secondary.withOpacity(0.8),
          padding: const EdgeInsets.symmetric(horizontal: TSizes.sm, vertical:  TSizes.xs),
          child: Text('25%', style: Theme.of(context).textTheme.labelLarge!.apply(color: TColors.black,)),
        ),
        const SizedBox(width: TSizes.spaceBtwItems,),

        //Price
        Text('\$250', style: Theme.of(context).textTheme.titleSmall!.apply(decoration: TextDecoration.lineThrough),),
        const SizedBox(width: TSizes.spaceBtwItems),
        const TProductPriceText(price: '200', isLarge: true,)
          ],
        ),
        
        const SizedBox(height: TSizes.spaceBtwItems / 1.5),

        //Title
        const TProductTitleText(title: 'Nike Air Jordan'),
        const SizedBox(height: TSizes.spaceBtwItems / 1.5),

        //Stock status
        Row(
          children: [
            const TProductTitleText(title: 'SKU'),
            const SizedBox(width: TSizes.spaceBtwItems ),
            Text('20', style: Theme.of(context).textTheme.titleMedium,),
          ],
        ),
        const SizedBox(height: TSizes.sm),

        //Brand
        Row(
          children: [
            TCircularImage(
              image: TImages.lightAppLogo,
              width: 32,
              height: 32,
              overlayColor: dark ? TColors.white : TColors.black,
              ),
              const SizedBox(width: TSizes.spaceBtwItems ),
              const TBrandTitleTextWithVerifiedIcon(title: 'Mobil', brandTextSize: TextSizes.medium,)
          ],
        )
      ],
    );  
  }
}