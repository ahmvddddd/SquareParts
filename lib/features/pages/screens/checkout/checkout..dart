// ignore_for_file: prefer_const_constructors, file_names, prefer_const_literals_to_create_immutables, unused_local_variable

import 'package:flutter/material.dart';
import '../../../../common/widgets/appbar/appbar.dart';
import '../../../../common/widgets/custom_shapes/containers/rounded_container.dart';
import '../../../../common/widgets/products/cart/coupon_widgets.dart';
import '../../../../common/widgets/texts/section_heading.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helper_function.dart';
import '../cart/widgets/cart_items.dart';
import 'widgets/billing_address_section.dart';
import 'widgets/billing_amount_section.dart';
import 'widgets/billing_payment_section.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark =  THelperFunctions.isDarkMode(context);
    return SafeArea(
      child: Scaffold(
        appBar: TAppBar(
          title: Text('Cart',style: Theme.of(context).textTheme.headlineSmall,),
        ),
        // bottomNavigationBar: Padding(
        //   padding: const EdgeInsets.all(TSizes.spaceBtwItems),
        //   child: ElevatedButton(
        //     onPressed: () {},
        //     style: ElevatedButton.styleFrom(backgroundColor:  TColors.primary),
        //     child: Text(
        //       'Proceed',
        //       style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: Colors.white),
        //     ),
        //   ),
        // ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(TSizes.spaceBtwItems),
            child: Column(
              children: [
                //Items in cart
                TSectionHeading(
                  title: 'Cart',
                  showActionButton: false,
                ),
                const SizedBox(height: TSizes.spaceBtwItems,),
                const TCartItems(showAddRemoveButtons: true,),
                const SizedBox(height: TSizes.spaceBtwSections,),
      
                //Coupon TextField
                TSectionHeading(
                  title: 'Coupon',
                  showActionButton: false,
                ),
                const SizedBox(height: TSizes.spaceBtwItems,),
                TCouponCode(),
                const SizedBox(height: TSizes.spaceBtwSections,),
      
                //Billing Section
                TSectionHeading(
                  title: 'Checkout',
                  showActionButton: false,
                ),
                const SizedBox(height: TSizes.spaceBtwItems,),
                TRoundedContainer(
                  showBorder: true,
                  padding: const EdgeInsets.all(TSizes.md),
                  backgroundColor: dark ? TColors.black : TColors.white,
                  child: Column(
                    children: [
                      //pricing
                      TBillingAmountSection(),
                      const SizedBox(height: TSizes.spaceBtwItems,),
      
                      //Divider
                      const Divider(),
                      const SizedBox(height: TSizes.spaceBtwItems,),
      
                      //Payment Method
                      TBillingPaymentSection(),
                      const SizedBox(height: TSizes.spaceBtwItems,),
                      
                      //Address
                      TBillingAddressSection(),

                      const SizedBox(height: TSizes.spaceBtwSections,),
                      Container(
                      height: 55,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 1,
                          color: Colors.white
                        ),
                        borderRadius: BorderRadius.circular(TSizes.borderRadiusLg)
                      ),
                      child: OutlinedButton(
                        onPressed: () {},
                        style: OutlinedButton.styleFrom(backgroundColor: TColors.primary),
                        child: Text(
                          'Pay',
                          style: Theme.of(context).textTheme.labelLarge!.copyWith(color: Colors.white),
                        ),
                      ),
                    ),
                ],
              ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

