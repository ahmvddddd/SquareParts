// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import '../../../../../common/widgets/chips/choicechip.dart';
import '../../../../../common/widgets/custom_shapes/containers/rounded_container.dart';
import '../../../../../common/widgets/products/products_cards/product_price_text.dart';
import '../../../../../common/widgets/texts/product_title_text.dart';
import '../../../../../common/widgets/texts/section_heading.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/helpers/helper_function.dart';

class TProductAttributes extends StatelessWidget {
  const TProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Column(
      children: [
        //Selected Attribute Pricing and decoration
        TRoundedContainer(
          padding:  EdgeInsets.all(TSizes.md),
          backgroundColor: dark ? TColors.darkerGrey :  TColors.grey,
          child:  Column(
            children: [
              //Title, Price and Stock status
              Row(
                children: [
                  TSectionHeading(title: 'Variation', showActionButton: false,),
                  SizedBox(width: TSizes.spaceBtwItems),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      
                  Row(
                    children: [
                      
                      TProductTitleText(title: 'Price :', smallSize: true,),
                      const SizedBox(width: TSizes.spaceBtwItems,),

                      //Actual Price
                      Text(
                        '\$250',
                        style: Theme.of(context).textTheme.titleSmall!.apply(decoration: TextDecoration.lineThrough),
                      ),
                      const SizedBox(width: TSizes.spaceBtwItems,),

                      //Sale Price
                      TProductPriceText(price: '200',)
                    ],
                  ),

                  //Stock
                  Row(
                    children: [
                      TProductTitleText(title: 'Stock :', smallSize: true,),
                      Text('In Stock', style: Theme.of(context).textTheme.titleMedium,),
                    ],
                  ),
                  ],
                  ),
                  ],
                  ),

              //Variation  Description
                  TProductTitleText(
                    title: 'Product description, this text can take up to four max lines',
                    smallSize: true,
                    maxlines: 4,
                    )

            ],
          )
        ),
        const SizedBox(height: TSizes.spaceBtwItems),

        //Attributes
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TSectionHeading(title: 'Colors', showActionButton: false,),
            SizedBox(height: TSizes.spaceBtwItems / 2,),
            Wrap(
              spacing: 8,
              children: [
                TChoiceChip(text: 'Green', selected: true, onSelected: (value){},),
                TChoiceChip(text: 'Blue', selected: false, onSelected: (value){}),
                TChoiceChip(text: 'Red', selected: true, onSelected: (value){}),
              ],
            ),
          ],
        ),

        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TSectionHeading(title: 'Size', showActionButton: false,),
            const SizedBox(height: TSizes.spaceBtwItems /2),
            Wrap(
              spacing: 8,
              children: [
                TChoiceChip(text: 'Eu 40', selected: true, onSelected:  (value){},),
                TChoiceChip(text: 'Eu 41', selected: false, onSelected:  (value){},),
                TChoiceChip(text: 'Eu 42', selected: true, onSelected:  (value){},),
              ] 
            )
          ],
        )
      ],
    );
  }
}

