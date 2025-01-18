// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../../../../../utils/constants/sizes.dart';

class TBillingAmountSection extends StatelessWidget {
  const TBillingAmountSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //Subtotal
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Subtotal', style: Theme.of(context).textTheme.bodyMedium,),
            Text('\u20A66000', style: Theme.of(context).textTheme.labelLarge,),
          ]
        ),

        const SizedBox(height: TSizes.sm),

        //Shipping Fee
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Shipping Fee', style: Theme.of(context).textTheme.bodyMedium,),
            Text('\u20A65000', style: Theme.of(context).textTheme.labelLarge,),
          ]
        ),
        
        const SizedBox(height: TSizes.sm),

        //Tax Fee
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Tax Fee', style: Theme.of(context).textTheme.bodyMedium,),
            Text('\u20A60.00', style: Theme.of(context).textTheme.labelLarge,),
          ]
        ),

        const SizedBox(height: TSizes.sm),

        //Order Total
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Order Total', style: Theme.of(context).textTheme.bodyMedium,),
            Text('\u20A611,000', style: Theme.of(context).textTheme.titleMedium,),
          ]
        ),
      ],
    );
  }
}