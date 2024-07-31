import 'package:flutter/material.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import 'search_container.dart';

class TetiaryContainer extends StatelessWidget {
  const TetiaryContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return  Expanded(
      child: Container(
        height: 400,
        color: TColors.primary,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Welcome To SquareParts',
            style: Theme.of(context).textTheme.headlineLarge,),
            Text('All in one app for auto care products',
            style: Theme.of(context).textTheme.headlineSmall,),
            const SizedBox(height: TSizes.spaceBtwItems,),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TSearchContainer(
                  text: 'SquareParts search AI',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}