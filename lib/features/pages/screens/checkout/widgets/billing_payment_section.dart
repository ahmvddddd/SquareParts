import 'package:flutter/material.dart';
import '../../../../../common/widgets/texts/section_heading.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/responsive.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/helpers/helper_function.dart';

class TBillingPaymentSection extends StatelessWidget {
  const TBillingPaymentSection({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Column(
      children: [
        TSectionHeading(title: 'Payment Method', buttonTitle: 'Change', onPressed: (){},),
        const SizedBox(height: TSizes.spaceBtwItems / 2,),
        Row(
          children: [
            Container(
                width: Responsive.tabIconWidth,
                constraints: BoxConstraints(maxHeight: Responsive.tabIconWidth),
                decoration: BoxDecoration(
                  color: dark ? TColors.dark : TColors.light,
                    borderRadius: BorderRadius.circular(TSizes.borderRadiusLg)),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(TSizes.borderRadiusLg),
                  child: Image.asset(
                    TImages.visa,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            const SizedBox(width: TSizes.sm),
            Text('VISA', style: Theme.of(context).textTheme.bodyLarge,),
          ],
        )
      ],
    );
  }
}