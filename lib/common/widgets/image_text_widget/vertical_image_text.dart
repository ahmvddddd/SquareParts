
import 'package:flutter/material.dart';
import '../../../utils/constants/colors.dart';
import '../../../utils/constants/responsive.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helper_function.dart';

class TVerticalImageText extends StatelessWidget {
  const TVerticalImageText({
    super.key, 
    required this.image,
    this.textColor = TColors.white, 
    this.backgroundColor, 
    this.onTap,
  });

  final String image;
  final Color textColor;
  final Color? backgroundColor;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(right: TSizes.spaceBtwItems),
        child: Column(
          children: [
            //Circular icon
            Container(
              width: Responsive.tabIconWidth,
              constraints: BoxConstraints(
                maxHeight: Responsive.tabIconWidth,
              ),
              padding: const EdgeInsets.all(TSizes.sm),
              decoration: BoxDecoration(
                color: backgroundColor ?? (THelperFunctions.isDarkMode(context) ? TColors.black : TColors.white),
                borderRadius: BorderRadius.circular(100),
                border: Border.all(
                  width: 1,
                  color: TColors.primary
                )
              ),
              child: Center(
                child: Image(image: AssetImage(image), fit: BoxFit.contain,),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

