import 'package:flutter/material.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../custom_shapes/containers/rounded_container.dart';

class ProductCategoryCard extends StatelessWidget {
  const ProductCategoryCard({super.key, required this.imageUrl, required this.categoryText});
  final String imageUrl;
  final String categoryText;

  @override
  Widget build(BuildContext context) {
    return  TRoundedContainer(
      width: 60,
      backgroundColor: Colors.transparent,
      borderColor: TColors.white,
      showBorder: true,
      radius: TSizes.borderRadiusLg,
      padding: const EdgeInsets.all(TSizes.sm),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(imageUrl, height: 30,fit: BoxFit.contain,),
          const SizedBox(height: TSizes.sm,),
          Text(categoryText,
          style: Theme.of(context).textTheme.labelLarge!.copyWith(color: Colors.white),)
        ],
      ),
    );
  }
}