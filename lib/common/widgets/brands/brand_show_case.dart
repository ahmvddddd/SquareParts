import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helper_function.dart';
import '../custom_shapes/containers/rounded_container.dart';
import 'brand_card.dart';

class TBrandShowcase extends StatelessWidget {
  const TBrandShowcase({
    super.key,
    required this.images,
  });

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return TRoundedContainer(
      showBorder: true,
      borderColor: TColors.grey,
      backgroundColor: Colors.transparent,
      padding: const EdgeInsets.all(TSizes.md),
      margin: const EdgeInsets.only(bottom: TSizes.spaceBtwInputFields),
      child: Column(
        children: [
          // Brand with products count
          const TBrandCard(
            brandImage: '',
            brandName: '',
            showBorder: false),
          const SizedBox(height: TSizes.spaceBtwItems,),

          //Brand Top 3 product Images
          Row(
            children: images.map((image) => brandTopProductImageWidget(image, context)).toList())
      ],
      ),
    );
  }

  Widget brandTopProductImageWidget(String image, context) {
    return Expanded(
      child: TRoundedContainer(
      height: 100,
      padding: const EdgeInsets.all(TSizes.md),
      margin: const EdgeInsets.only(right: TSizes.sm),
      backgroundColor: THelperFunctions.isDarkMode(context) ? TColors.darkGrey : TColors.light,
      child:  Image(fit: BoxFit.contain, image: AssetImage(image)),
      ),
      );
  }
}

