// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

import '../../../../../common/widgets/texts/section_heading.dart';
import '../../../../../utils/constants/sizes.dart';

class TBillingAddressSection extends StatelessWidget {
  const TBillingAddressSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
         TSectionHeading(title: 'Shipping Address', buttonTitle: 'Change', onPressed: (){},),
         Text('1234 P Road', style: Theme.of(context).textTheme.bodyLarge,),

         const SizedBox(width: TSizes.sm),
         Row(
          children: [
            const Icon(Icons.phone, color: Colors.grey, size: 16),
            const SizedBox(width: TSizes.spaceBtwItems,),
            Text('+123-456-7890', style: Theme.of(context).textTheme.bodyMedium,)
          ],
         ),

         const SizedBox(width: TSizes.sm),

         
         Row(
          children: [
            const Icon(Icons.location_on, color: Colors.grey, size: 16),
            const SizedBox(width: TSizes.spaceBtwItems,),
            Text('Ring Road ,SouthPark', style: Theme.of(context).textTheme.bodyMedium, softWrap: true,)
          ],
         ),
      ],
    );
  }
}