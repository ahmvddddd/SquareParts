// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import '../../../../common/widgets/appbar/appbar.dart';
import '../../../../common/widgets/custom_shapes/containers/rounded_container.dart';
import '../../../../common/widgets/texts/section_heading.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_strings.dart';
import 'widgets/deposit_method_card.dart';
import 'widgets/transaction_history_card.dart';

class AddScreen extends StatelessWidget {
  const AddScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
                      title: Text('Add',
                          style: Theme.of(context)
                              .textTheme
                              .headlineSmall),
                      showBackArrow: true,
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
                padding: EdgeInsets.all(TSizes.spaceBtwItems),
                child: Column(
                  children: [
                    
                    TransactionHistoryCard(),

                    const SizedBox(height: TSizes.spaceBtwItems),
                    TSectionHeading(
                      title: 'Select Deposit Method',
                      showActionButton: false,
                    ),

                    //Deposit Method
                    const SizedBox(height: TSizes.spaceBtwItems),
                    DepositMethodCard(),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
