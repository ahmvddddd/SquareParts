// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/helpers/helper_function.dart';

class HomeAssets extends StatelessWidget {
  const HomeAssets({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Column(
      children: [
        SizedBox(
          height: TSizes.spaceBtwItems,
        ),
        Container(
          padding: EdgeInsets.all(4),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(TSizes.borderRadiusMd),
              color: dark ? TColors.dark : Colors.grey),
          child: ListTile(
            leading: Image.asset(
              'TImages.btc',
              height: 30,
            ),
            title: Text(
              'BTC', style: Theme.of(context).textTheme.labelMedium
            ),
            trailing:
            Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('\$560', style: Theme.of(context).textTheme.labelSmall),
                    Text('0.00029 BTC', style: Theme.of(context).textTheme.labelSmall),
                  ],
                )
          ),
        ),
        SizedBox(
          height: TSizes.spaceBtwItems,
        ),
        Container(
          padding: EdgeInsets.all(4),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(TSizes.borderRadiusMd),
              color: dark ? TColors.dark : Colors.grey),
          child: ListTile(
            leading: Image.asset(
              'TImages.usd',
              height: 30,
            ),
            title: Text('USDT', style: Theme.of(context).textTheme.labelMedium),
            trailing:
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('\$409', style: Theme.of(context).textTheme.labelSmall),
                    Text('\$409 USDT', style: Theme.of(context).textTheme.labelSmall),
                  ],
                )
          ),
        ),
        SizedBox(
          height: TSizes.spaceBtwItems,
        ),
        Container(
          padding: EdgeInsets.all(4),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(TSizes.borderRadiusMd),
              color: dark ? TColors.dark : Colors.grey),
          child: ListTile(
            leading: Image.asset(
              'TImages.xrp',
              height: 30,
            ),
            title: Text('Xrp', style: Theme.of(context).textTheme.labelMedium),
            trailing:
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('\$200', style: Theme.of(context).textTheme.labelSmall),
                    Text('0.7129 XRP', style: Theme.of(context).textTheme.labelSmall),
                  ],
                ),
          ),
        ),
        SizedBox(
          height: TSizes.spaceBtwItems,
        ),
        Container(
          padding: EdgeInsets.all(4),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(TSizes.borderRadiusMd),
              color: dark ? TColors.dark : Colors.grey),
          child: ListTile(
            leading: Image.asset(
              'TImages.eth',
              height: 30,
            ),
            title: Text('Eth', style: Theme.of(context).textTheme.labelMedium),
            trailing:
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('\$300', style: Theme.of(context).textTheme.labelSmall),
                    Text('0.08129 ETH', style: Theme.of(context).textTheme.labelSmall),
                  ],
                )
          ),
        ),
        SizedBox(
          height: TSizes.spaceBtwItems,
        ),
        Container(
          padding: EdgeInsets.all(4),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(TSizes.borderRadiusMd),
              color: dark ? TColors.dark : Colors.grey),
          child: ListTile(
            leading: Image.asset(
              'TImages.sol',
              height: 30,
            ),
            title: Text('Sol', style: Theme.of(context).textTheme.labelMedium),
            trailing:
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('\$101', style: Theme.of(context).textTheme.labelSmall),
                    Text('0.43129 SOL', style: Theme.of(context).textTheme.labelSmall),
                  ],
                )
          ),
        ),
      ],
    );
  }
}
