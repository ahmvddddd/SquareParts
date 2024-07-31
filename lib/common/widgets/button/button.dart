import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';
import '../custom_shapes/containers/rounded_container.dart';

class Button extends StatelessWidget {
  const Button({super.key, this.onTap, required this.text});

  final VoidCallback? onTap;
  final String text;

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(TSizes.spaceBtwItems),
        child: TRoundedContainer(
          height: 40,
          width: 360,
          backgroundColor: TColors.primary,
          showBorder: true,
          radius: TSizes.borderRadiusLg,
          padding: const EdgeInsets.all(TSizes.sm),
          child: Center(
            child: Text(text,
            style: Theme.of(context).textTheme.labelLarge!.copyWith(color: TColors.white),),
          ),
        ),
      ),
    );
  }
}