// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../navigation_menu.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(TSizes.spaceBtwItems),
        child: ElevatedButton(
          onPressed: () => Get.to((NavigationMenu())),
          style: ElevatedButton.styleFrom(backgroundColor: TColors.primary),
          child: Text(
            'Proceed',
            style: Theme.of(context)
                .textTheme
                .bodyLarge!
                .copyWith(color: Colors.white),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(TSizes.spaceBtwItems),
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //image and texts
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Text('High',
                      style: Theme.of(context).textTheme.headlineSmall!.copyWith(color: TColors.primary),),
                      Text('Quality',
                      style: Theme.of(context).textTheme.headlineLarge!.copyWith(color: TColors.primary),),
                      Text('Brands',
                      style: Theme.of(context).textTheme.headlineSmall!.copyWith(color: TColors.primary),),
                    ],
                  ),
                  Image.asset(
                    TImages.logo,
                    height: 240,
                  ),
                  
                ],
              ),
              SizedBox(
                height: TSizes.spaceBtwSections,
              ),
              // Column(
              //   crossAxisAlignment: CrossAxisAlignment.start,
              //   children: [
              //     Text(
              //       'Auto Parts',
              //       style: Theme.of(context).textTheme.headlineLarge,
              //     ),
              //     SizedBox(
              //       height: TSizes.sm,
              //     ),
              //     Text(
              //       'One Stop For OEM Parts',
              //       style: Theme.of(context).textTheme.bodyLarge,
              //     ),
              //   ],
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
