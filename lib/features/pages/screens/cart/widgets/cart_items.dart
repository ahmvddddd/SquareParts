// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import '../../../../../common/widgets/custom_shapes/containers/rounded_container.dart';
import '../../../../../common/widgets/icons/t_circular_icon.dart';
import '../../../../../common/widgets/products/cart/cart_item.dart';
import '../../../../../common/widgets/texts/product_title_text.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/helpers/helper_function.dart';
import '../../../models/category_model.dart';

class TCartItems extends StatelessWidget {
  const TCartItems({
    super.key,
    this.showAddRemoveButtons = true,
  });

  final bool showAddRemoveButtons;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return TRoundedContainer(
      borderColor: TColors.primary,
      backgroundColor: Colors.transparent,
      showBorder: true,
      padding: EdgeInsets.all(TSizes.sm),
      child: ListView.separated(
            separatorBuilder: (_, __) => const SizedBox(height: TSizes.spaceBtwItems,),
            shrinkWrap: true,
            itemCount: 2,
            physics: ScrollPhysics(parent: null),
            itemBuilder: (_, index) => TRoundedContainer(
              padding: EdgeInsets.all(TSizes.sm),
              radius: TSizes.borderRadiusLg,
              backgroundColor: Colors.transparent,
              showBorder: true,
              borderColor: dark ? Colors.white : Colors.black,
              child: Column(
                children: [
                  //Cart Item
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TCartItem(
                        imageUrl: shopList[index].imageUrl,
                        title1: shopList[index].title,
                        title2: shopList[index].title,
                      ),
                      TCircularIcon(
                        width: 50,
                        height: 50,
                        backgroundColor: Colors.transparent,
                        icon: Icons.cancel,
                      )
                    ],
                  ),
                  if(showAddRemoveButtons) const SizedBox(height: TSizes.xs,),
                    
                  if(showAddRemoveButtons)
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TProductTitleText(title: '\u20A63,000'),
                    ],
                  ),
                ],
              ),
            )
          ),
    );
  }
}
