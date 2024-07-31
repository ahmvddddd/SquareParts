
import 'package:flutter/material.dart';
import '../../../utils/constants/enums.dart';
import '../../../utils/constants/sizes.dart';
import '../custom_shapes/containers/rounded_container.dart';
import '../images/t_circular_image.dart';
import '../texts/t_brand_title_text_with_verified_icon.dart';

class TBrandCard extends StatelessWidget {
  const TBrandCard({
    super.key,
    this.onTap,
    required this.showBorder, required this.brandName, required this.brandImage,
  });

  final bool showBorder;
  final void Function()? onTap;
  final String brandName;
  final String brandImage;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
    onTap: onTap,
    //container image
    child: TRoundedContainer(
      showBorder: showBorder,
      padding: const EdgeInsets.all(TSizes.sm),
      backgroundColor: Colors.transparent,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Icon
          Flexible(
            child: TCircularImage(
              isNetworkImage: false,
              image: brandImage,
              fit: BoxFit.contain,
              backgroundColor: Colors.transparent,
            ),
          ),
          const SizedBox(width: TSizes.spaceBtwItems / 2,),
                    
          //Text
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TBrandTitleTextWithVerifiedIcon(title: brandName, brandTextSize: TextSizes.large),
                Text( '4 products available in store',
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.labelMedium,
                )
              ],
            ),
          )
      ],
      ),
      ),
                    );
  }
}

//isDark ? TColors.white : TColors.black,