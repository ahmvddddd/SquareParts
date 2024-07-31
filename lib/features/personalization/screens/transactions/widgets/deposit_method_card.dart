import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../../common/widgets/custom_shapes/containers/rounded_container.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/helpers/helper_function.dart';

class DepositMethodCard extends StatelessWidget {
  const DepositMethodCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return TRoundedContainer(
      backgroundColor: dark ? Colors.transparent : TColors.white,
      borderColor: TColors.primary,
      showBorder: true,
      radius: TSizes.borderRadiusLg,
      padding: const EdgeInsets.all(TSizes.defaultSpace),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TRoundedContainer(
            backgroundColor: dark ? Colors.transparent : TColors.white,
            padding: const EdgeInsets.all(TSizes.sm / 2),
            child: Column(
              children: [
                const Icon(Iconsax.arrow_swap_horizontal,size: TSizes.lg, color: TColors.primary,),
                const SizedBox(height: TSizes.spaceBtwItems,),
                Text(
                  'Transfer',
                  style: Theme.of(context).textTheme.labelMedium,
                ),
              ],
            ),
          ),
          TRoundedContainer(
            backgroundColor: dark ? Colors.transparent : TColors.white,
            padding: const EdgeInsets.all(TSizes.sm / 2),
            child: Column(
              children: [
                const Icon(Iconsax.card, size: TSizes.lg, color: TColors.primary,),
               const SizedBox(height: TSizes.spaceBtwItems,),
                Text(
                  'Card Payment',
                  style: Theme.of(context).textTheme.labelMedium,
                ),
              ],
            ),
          ),
          TRoundedContainer(
            backgroundColor: dark ? Colors.transparent : TColors.white,
            padding: const EdgeInsets.all(TSizes.sm / 2),
            child: Column(
              children: [
                const Icon(Iconsax.bank, size: TSizes.lg, color: TColors.primary,),
                const SizedBox(height: TSizes.spaceBtwItems,),
                Text(
                  'Bank Deposit',
                  style: Theme.of(context).textTheme.labelMedium,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
