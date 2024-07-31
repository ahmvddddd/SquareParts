// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../common/widgets/appbar/appbar.dart';
import '../../../../common/widgets/brands/brand_card.dart';
import '../../../../common/widgets/layouts/grid_layout.dart';
import '../../../../common/widgets/texts/section_heading.dart';
import '../../../../utils/constants/sizes.dart';
import 'brand_products.dart';

class AllBrandsScreen extends StatelessWidget {
  const AllBrandsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  TAppBar(
        showBackArrow: true,
        title: Text('Brand',style: Theme.of(context).textTheme.headlineSmall,),
      ),
      body: SingleChildScrollView(
        child: Padding(padding: EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          children: [
            //Heading
            TSectionHeading(title: 'Brands'),
            SizedBox(height: TSizes.spaceBtwItems,),

            //Brands
            TGridLayout(itemCount: 10,
             mainAxisExtent: 80,
             itemBuilder: (context,
             index) => TBrandCard(showBorder: true,
             brandImage: '',
             brandName: '',
             onTap: () => Get.to(() => BrandProducts(
              brandImage: '',
              brandName: '',
             )),
             ),)
          ],
        ),
        ),
      ),
    );
  }
}