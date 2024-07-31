// ignore_for_file: prefer_const_constructors, prefer_const_declarations, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import '../../../../common/widgets/appbar/appbar.dart';
import '../../../../common/widgets/custom_shapes/containers/rounded_container.dart';
import '../../../../common/widgets/texts/section_heading.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_strings.dart';
import 'widgets/enter_amount_card.dart';
import 'widgets/swap_card.dart';

class Swap extends StatelessWidget {
  const Swap({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
                    title: Text('Swap',
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium),
                    showBackArrow: false,
                  ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //header
            Column(
              children: [
                
                //Acount Balance
                Padding(
                  padding: const EdgeInsets.all(TSizes.spaceBtwItems),
                  child: TRoundedContainer(
                      padding: const EdgeInsets.all(TSizes.defaultSpace),
                      width: 360,
                    backgroundColor: TColors.primary.withOpacity(0.8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //Texts
                        Text(TTexts.accountBalance,
                            style: Theme.of(context)
                                .textTheme
                                .headlineMedium),
                        Text(TTexts.accountText,
                            style: Theme.of(context)
                                .textTheme
                                .labelMedium),
                      ],
                    ),
                  ),
                ),
              ],
            ),

            //Body
            Padding(
              padding: const EdgeInsets.all(TSizes.spaceBtwItems),
              child: Column(
                children: [
                  TSectionHeading(
                    title: 'Select Pairs',
                    showActionButton: false,
                  ),
                  const SizedBox(height: TSizes.spaceBtwItems),
                  SwapCard(
                    text: 'Eth',
                    text2: '\$14,790.00',
                    imageUrl: 'TImages.eth,'
                  ),

                  const SizedBox(height: TSizes.spaceBtwItems),
                  SwapCard(
                    text: 'USDT',
                    text2: '\$2579.00',
                    imageUrl: 'TImages.usd',
                  ),

                  const SizedBox(height: TSizes.spaceBtwItems),
                  TSectionHeading(
                    title: 'Enter Amount',
                    showActionButton: false,
                  ),

                  //Amount
                  const SizedBox(height: TSizes.spaceBtwItems),
                  EnterAmount(),

                  //buton
                  const SizedBox(height: TSizes.spaceBtwSections),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: TColors.primary ),
                    child: Text(
                      'Proceed',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
