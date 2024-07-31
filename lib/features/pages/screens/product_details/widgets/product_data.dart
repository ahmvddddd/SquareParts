// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import '../../../../../common/widgets/images/t_circular_image.dart';
import '../../../../../common/widgets/texts/t_brand_title_text_with_verified_icon.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/enums.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/helpers/helper_function.dart';

class ProductData extends StatelessWidget {
  const ProductData({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //Name
        Text('Mobil Advanced Full Syntethic Engine Oil',
        style: Theme.of(context).textTheme.bodyLarge,
        maxLines: 2),

        const SizedBox(height: TSizes.spaceBtwItems),
        //Price and sale tag
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          Text('Price:',
          style: Theme.of(context).textTheme.labelLarge,),

        //Price
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text('\$49.99',
          style: Theme.of(context).textTheme.headlineMedium,),
            Text('\$60.19', style: Theme.of(context).textTheme.headlineSmall!.apply(decoration: TextDecoration.lineThrough),),
          ],
        ),
          ],
        ),

        //Stock status
        const SizedBox(height: TSizes.spaceBtwItems),
        Row(
          children: [
            Text('Stock', style: Theme.of(context).textTheme.labelLarge,),
            const SizedBox(width: TSizes.spaceBtwItems ),
            Text('20', style: Theme.of(context).textTheme.bodyMedium,),
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems),

        //Brand
        Row(
          children: [
            TCircularImage(
              image: TImages.mobil,
              width: 32,
              height: 32,
              fit: BoxFit.contain,
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